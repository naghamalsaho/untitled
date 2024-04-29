class AppLink {
  static const String server = "http://192.168.133.98:8000/api";
  //*********************
  static const String test = "$server/ ";

  //auth Link ***********************
  static const String signup = "$server/register";
  static const String verifycoderegister = "$server/verifyAccount";
  static const String login = "$server/login";
  static const String reSendCode = "$server/sendCode";
  // Forget Password ****************
  static const String checkemail = "$server/forgotPassword";
  static const String verifycodeforgetpassword = "$server/checkCode";
  static const String resetPassword = "$server/resetPassword";

  //profile link *****************************
  static const String information = "$server/create profile";
  static const String profile = "$server/update profile";
}
