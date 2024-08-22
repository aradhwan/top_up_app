import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:top_up_app/src/src.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  /// - [skipError] (false by default) decides whether to invoke [onData] instead
  ///   of [onError] if a previous [value] is available.
  ///
  /// - [skipLoadingOnReload] (false by default) customizes whether [onLoading]
  ///   should be invoked if a provider rebuilds because of [Ref.watch].
  ///   In that situation, [AsyncValueWidget] will try to invoke either [onError]/[onData]
  ///   with the previous state.
  ///
  /// - [skipLoadingOnRefresh] (true by default) controls whether [onLoading]
  ///   should be invoked if a provider rebuilds because of [Ref.refresh]
  ///   or [Ref.invalidate].
  ///   In that situation, [AsyncValueWidget] will try to invoke either [onError]/[onData]
  ///   with the previous state.
  const AsyncValueWidget({
    super.key,
    required this.asyncValue,
    required this.onData,
    this.skipError = false,
    this.skipLoadingOnReload = true,
    this.skipLoadingOnRefresh = true,
    this.onError = _defaultOnError,
    this.onLoading = const SizedBox(),
  });

  final AsyncValue<T> asyncValue;
  final Widget Function(T value) onData;
  final Widget Function(Error value) onError;
  final Widget onLoading;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final bool skipError;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      skipError: skipError,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: (value) => onData(value),
      error: (error, stackTrace) => onError(Error(message: error.toString())),
      loading: () => onLoading,
    );
  }

  static Widget _defaultOnError(Error error) {
    return const SizedBox();
  }
}
