import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/second_screen.dart';
import 'package:flutter/material.dart';

class firstScreen extends StatefulWidget {
  firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreen();
}

class _firstScreen extends State<firstScreen> {
  int counter = 0;
  int height = 180;
  int weight = 80;
  int age = 23;
  bool isMale = true;

  TextStyle style1 = TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: AppColor.white);
  TextStyle style2 = TextStyle(fontSize: 20, color: AppColor.white);
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
                              Icon(
                                Icons.male,
                                color: AppColor.white,
                                size: 120,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text('male', style: style2)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
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
                              Icon(
                                Icons.female_rounded,
                                color: AppColor.white,
                                size: 120,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text('female', style: style2)
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
                margin: EdgeInsets.symmetric(vertical: 10),
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
                        style: style2,
                      ),
                      SizedBox(
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
                              style: style1,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'CM',
                              style: style2,
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
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColor.Contbackground,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight', style: style2),
                          Text(weight.toString(), style: style2),
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
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColor.Contbackground,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('age', style: style2),
                          Text(age.toString(), style: style2),
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ResultView()));
                  },
                  child: Text(
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
