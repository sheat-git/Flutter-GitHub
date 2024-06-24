import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github/providers/languages.dart';
import 'package:github/providers/spoken_languages.dart';
import 'package:github/providers/trending_repositories.dart';
import 'package:github/services/github_trending/github_trending.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:github/services/github_trending/responses/repositories.dart';
import 'package:github/services/github_trending/responses/spoken_languages.dart';
import 'package:github/ui/pages/home.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:network_image_mock/network_image_mock.dart';

class MockTrendingRepositories extends TrendingRepositories {
  @override
  Future<List<Repository>> build({
    TrendingSince since = TrendingSince.daily,
    Language? language,
    SpokenLanguage? spokenLanguage,
  }) =>
      Future.value(List.filled(
        20,
        Repository(
          author: 'Authro',
          name: 'Name',
          avatar: Uri.parse('https://github.com/sheat-git.png'),
          url: Uri.parse('https://github.com/sheat-git/Flutter-Github'),
          description: 'Description',
          stars: 0,
          forks: 0,
          currentPeriodStars: 0,
          builtBy: [],
        ),
      ));
}

void main() {
  late ProviderContainer container;
  late MockTrendingRepositories mockTrendingRepositories;

  setUp(() {
    mockTrendingRepositories = MockTrendingRepositories();

    container = ProviderContainer(overrides: [
      languagesProvider.overrideWith((ref) => []),
      spokenLanguagesProvider.overrideWith((ref) => []),
      trendingRepositoriesProvider(since: TrendingSince.daily)
          .overrideWith(() => mockTrendingRepositories),
      trendingRepositoriesProvider(since: TrendingSince.weekly)
          .overrideWith(() => mockTrendingRepositories),
    ]);
  });

  group('HomePage Tests', () {
    testWidgets(
      'FAB visibility on scroll',
      (tester) => mockNetworkImagesFor(() async {
        await tester.pumpWidget(UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: HomePage(),
          ),
        ));

        await tester.pumpAndSettle();

        double getFabScale() {
          final animatedScale = tester.widget<AnimatedScale>(find.ancestor(
            of: find.byType(FloatingActionButton),
            matching: find.byType(AnimatedScale),
          ));
          return animatedScale.scale;
        }

        // 初期状態でFABが表示されていることを確認
        expect(getFabScale(), 1.0);

        // 下にスクロール
        await tester.fling(find.byType(ListView), const Offset(0, -500), 1000);
        await tester.pumpAndSettle();

        // FABが非表示になっていることを確認
        expect(getFabScale(), 0.0);

        // 上にスクロール
        await tester.fling(find.byType(ListView), const Offset(0, 500), 1000);
        await tester.pumpAndSettle();

        // FABが再び表示されていることを確認
        expect(getFabScale(), 1.0);
      }),
    );

    testWidgets(
      'FAB visibility on change filter',
      (tester) => mockNetworkImagesFor(() async {
        const locale = Locale('en');

        await tester.pumpWidget(UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: HomePage(),
          ),
        ));

        await tester.pumpAndSettle();

        double getFabScale() {
          final animatedScale = tester.widget<AnimatedScale>(find.ancestor(
            of: find.byType(FloatingActionButton),
            matching: find.byType(AnimatedScale),
          ));
          return animatedScale.scale;
        }

        // 初期状態でFABが表示されていることを確認
        expect(getFabScale(), 1.0);

        // 下にスクロール
        await tester.fling(find.byType(ListView), const Offset(0, -500), 1000);
        await tester.pumpAndSettle();

        // FABが非表示になっていることを確認
        expect(getFabScale(), 0.0);

        // フィルターを変更
        await tester.tap(find.text(lookupAppLocalizations(locale).today));
        await tester.pumpAndSettle();
        await tester.tap(find.text(lookupAppLocalizations(locale).thisWeek));
        await tester.pumpAndSettle();

        // FABが再び表示されていることを確認
        expect(getFabScale(), 1.0);
      }),
    );
  });
}
