import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/data/data_scource/static/static.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Stack(children: [
          Container(
            color: Color.fromARGB(255, 81, 38, 87),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(48))),
                child: PageView.builder(
                    itemCount: onBoardingList.length,
                    itemBuilder: (context, i) => Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Image.asset(
                                onBoardingList[i].image!,
                                width: 200,
                                height: 250,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                onBoardingList[i].title!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  child: Text(
                                    onBoardingList[i].body!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        height: 2, color: AppColor.grey),
                                  )),

                              // ClipPath(
                              //     clipper: WaveClipperOne(),
                              //     child: Container(
                              //       color: Colors.amber,
                              //       height: 50,
                              //       width: double.infinity,
                              //     ))
                            ],
                          ),
                        ))),
          ),
          Positioned(
              right: -15,
              bottom: -15,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 4,
                          color: Color.fromARGB(255, 81, 38, 87),
                          blurRadius: 16)
                    ],
                    color: Color.fromARGB(255, 81, 38, 87),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(52),
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                      topRight: Radius.circular(32),
                    )),
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 40,
                ),
              ))
        ]),
      ),
    );
  }
}
