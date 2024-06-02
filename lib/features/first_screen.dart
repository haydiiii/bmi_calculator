import 'dart:math';

import 'package:bmi_calculator/core/constants/text_style.dart';
import 'package:bmi_calculator/core/utils/colors.dart';
import 'package:bmi_calculator/features/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {


//   Severe Thinness	< 16
// Moderate Thinness	16 - 17
// Mild Thinness	17 - 18.5
// Normal	18.5 - 25
// Overweight	25 - 30
// Obese Class I	30 - 35
// Obese Class II	35 - 40
// Obese Class III	> 40
  int counter = 0;
  int height = 180;
  int weight = 80;
  int age = 23;
  bool isMale = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: AppColor.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // two container
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (isMale)
                                ? AppColor.PrimaryColor
                                : AppColor.Contbackground,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.male,
                                color: AppColor.white,
                                size: 120,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text('male', style: AppTxtStyle.style2)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (isMale)
                                ? AppColor.Contbackground
                                : AppColor.PrimaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.female_rounded,
                                color: AppColor.white,
                                size: 120,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text('female', style: AppTxtStyle.style2)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColor.Contbackground,
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: AppTxtStyle.style2,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: AppTxtStyle.style1,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              'CM',
                              style: AppTxtStyle.style2,
                            ),
                          ],
                        ),
                      ),
                      Slider(
                          activeColor: AppColor.PrimaryColor,
                          inactiveColor: AppColor.btnColor,
                          max: 220,
                          min: 120,
                          value: height.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              height = value.toInt();
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColor.Contbackground,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight', style: AppTxtStyle.style2),
                          Text(weight.toString(), style: AppTxtStyle.style2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                color: Colors.amber,
                                onPressed: () {
                                  if (weight > 0) {
                                    setState(() {});
                                    weight--;
                                  }
                                },
                                icon: const Icon(Icons.remove),
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    foregroundColor: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {});
                                  weight++;
                                },
                                icon: const Icon(Icons.add),
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    foregroundColor: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColor.Contbackground,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('age', style: AppTxtStyle.style2),
                          Text(age.toString(), style: AppTxtStyle.style2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (age > 0) {
                                    setState(() {});
                                    age--;
                                  }
                                },
                                icon: const Icon(Icons.remove),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {});
                                  age++;
                                },
                                icon: const Icon(Icons.add),
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    foregroundColor: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                    ),
                  )
                ],
              ),
            ),
            //HIEGHT

            //WEIGHT
            //BUTTON
            // SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      foregroundColor: AppColor.white,
                      backgroundColor: AppColor.PrimaryColor),
                  onPressed: () {
                    double result= weight/ pow(height/100, 2);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>  ResultView(result: result,
                          
                        )));
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
