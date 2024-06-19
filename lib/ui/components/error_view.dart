import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:material_symbols_icons/symbols.dart';

class ErrorView extends StatelessWidget {
  final Object error;
  final void Function()? onRetry;

  const ErrorView({
    super.key,
    required this.error,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Symbols.error,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 8),
          Text(_toMessage(AppLocalizations.of(context)!)),
          if (onRetry != null) ...[
            TextButton(
              onPressed: () => onRetry!(),
              style: TextButton.styleFrom(
                visualDensity: VisualDensity.compact,
              ),
              child: Text(AppLocalizations.of(context)!.retry),
            ),
          ],
        ],
      );

  String _toMessage(AppLocalizations localizations) {
    // getterからのアクセスでは型推論が効かないためローカル変数にする
    final error = this.error;
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode;
          if (statusCode != null && statusCode >= 500 && statusCode < 600) {
            return localizations.serverErrorMessage;
          }
        case DioExceptionType.connectionError:
          return localizations.connectionErrorMessage;
        default:
          break;
      }
    }
    return localizations.genericErrorMessage;
  }
}
