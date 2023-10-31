// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw_barbershop/src/core/exceptions/service_exception.dart';
import 'package:dw_barbershop/src/core/fp/either.dart';
import 'package:dw_barbershop/src/core/fp/nil.dart';
import 'package:dw_barbershop/src/repositories/user/user_repository.dart';
import 'package:dw_barbershop/src/services/user_login/user_login_service.dart';
import 'package:dw_barbershop/src/services/user_register/user_register_service.dart';

class UserRegisterServiceImpl implements UserRegisterService {
  final UserRepository userRepository;
  final UserLoginService userLoginService;

  UserRegisterServiceImpl({
    required this.userRepository,
    required this.userLoginService,
  });

  @override
  Future<Either<ServiceException, Nil>> excute(
      ({String name, String email, String password}) userData) async {
    final registerResult = await userRepository.registerAdmin(userData);

    switch (registerResult) {
      case Success():
        return userLoginService.execute(userData.email, userData.password);
      case Failure(:final exception):
        return Failure(ServiceException(message: exception.message));
    }
  }
}
