import 'package:flutter/material.dart';
import 'package:untitled/view/widget/auth/custombuttomauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 175, 101, 188),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text(
            'Success',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: Colors.purple,
              ),
            ),
            const Text("......"),
            const Text("....."),
            const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                text: "Go To Login",
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ]),
        ));
  }
}
