import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_request.freezed.dart';
part 'signin_request.g.dart';

@Freezed()
abstract class SigninRequest with _$SigninRequest {
  const factory SigninRequest({String? email, String? password}) =
      _SigninRequest;

  factory SigninRequest.fromJson(Map<String, dynamic> json) =>
      _$SigninRequestFromJson(json);
}
