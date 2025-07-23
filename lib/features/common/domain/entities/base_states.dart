import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_states.freezed.dart';
part 'base_states.g.dart';

@freezed
abstract class InitialState with _$InitialState {
  const factory InitialState() = _InitialState;
}

@freezed
abstract class LoadingState with _$LoadingState {
  const factory LoadingState() = _LoadingState;
}

@freezed
abstract class ErrorState with _$ErrorState {
  const factory ErrorState({required String message}) = _ErrorState;

  factory ErrorState.fromJson(Map<String, dynamic> json) =>
      _$ErrorStateFromJson(json);
}
