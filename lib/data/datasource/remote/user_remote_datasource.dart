// abstract class UserRemoteDataSource {
//   Future<UserModel> getMyProfile();

//   Future<dynamic> getPlayerById();
// }

// class UserRemoteDataSourceImpl implements UserRemoteDataSource {
//   final ApiHandler _apiHandler;

//   UserRemoteDataSourceImpl(this._apiHandler);

//   @override
//   Future<UserModel> getMyProfile() {
//     return _apiHandler.get<UserModel>(
//       EndPoints.userMyProfile,
//       parser: (json) => UserModel.fromJson(json['data']),
//     );
//   }

//   @override
//   Future<dynamic> getPlayerById() {
//     return _apiHandler.get<dynamic>(
//       '${EndPoints.player}/1',
//       parser: (json) => json['data'],
//     );
//   }
// }
