import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/response/token_response_entity.dart';

part 'token_response_model.g.dart';

@JsonSerializable()
class TokenResponseModel implements TokenResponse {
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  TokenResponseModel(this.accessToken, this.refreshToken);

  factory TokenResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseModelToJson(this);
}
