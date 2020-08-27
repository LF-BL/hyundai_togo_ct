import 'dart:async';

abstract class AppMethods{
  Future <String> logginUser({String email, String password});
  Future <String> createUserAccount(
  {
    String fullName,String email,String password, String confirmPassword
}
      );
}