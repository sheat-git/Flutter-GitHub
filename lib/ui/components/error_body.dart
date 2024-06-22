import 'package:flutter/material.dart';
import 'package:github/ui/components/error_view.dart';

class ErrorBody extends StatelessWidget {
  final Object error;
  final void Function()? onRetry;

  const ErrorBody({
    super.key,
    required this.error,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) => Center(
        // エラー文が切れる可能性を考慮してスクロール可能にしてる
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ErrorView(
            error: error,
            onRetry: onRetry,
          ),
        ),
      );
}
