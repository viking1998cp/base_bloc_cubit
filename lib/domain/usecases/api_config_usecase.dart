import 'package:lichviet_modules/domain/repositories/api_config_repository.dart';

class ApiConfigUsecases {
  final ApiConfigRepository _apiConfigRepository;

  ApiConfigUsecases(this._apiConfigRepository);

  Future<int?> getIdIv(String publicKey) {
    return _apiConfigRepository.getIvId(publicKey);
  }
}
