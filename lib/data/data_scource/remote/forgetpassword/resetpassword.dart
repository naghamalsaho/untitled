import 'package:untitled/api_link.dart';
import 'package:untitled/core/class/crud.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  postdata(String code, String password, String password_confirmation) async {
    var response = await crud.postData(AppLink.resetPassword, {
      "code": code,
      "password": password,
      "password_confirmation": password_confirmation,
    });
    print("daataaaaaaaaaaaaaaa $response");
    return response.fold((l) => 1, (r) => r);
  }
}
