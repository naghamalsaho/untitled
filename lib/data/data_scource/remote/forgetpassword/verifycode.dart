import 'package:untitled/api_link.dart';
import 'package:untitled/core/class/crud.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);

  postdata(String verifycode) async {
    var response = await crud
        .postData(AppLink.verifycodeforgetpassword, {"code": verifycode});
    print("daataaaaaaaaaaaaaaa $response");
    return response.fold((l) => 1, (r) => r);
  }
}
