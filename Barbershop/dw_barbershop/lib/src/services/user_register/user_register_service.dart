import 'package:dw_barbershop/src/core/exceptions/service_exception.dart';
import 'package:dw_barbershop/src/core/fp/either.dart';
import 'package:dw_barbershop/src/core/fp/nil.dart';

abstract interface class UserRegisterService {
  Future<Either<ServiceException, Nil>> excute(
      ({String name, String email, String password}) userData);
}
