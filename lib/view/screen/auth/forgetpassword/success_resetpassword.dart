import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custombuttomauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 175, 101, 188),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(238, 174, 125, 177),
          elevation: 0.0,
          title: Text(
            'Success',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: Colors.purple,
              ),
            ),
            Text("......"),
            Text("....."),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                text: "Go To Login",
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30,
            )
          ]),
        ));
  }
}
