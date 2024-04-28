import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.gender,
      required this.height,
      required this.age,
      required this.weight});
  final Gender gender;
  final int height;
  final int age;
  final int weight;

  String getBMIText() {
    if ((weight / ((height / 100) * (height / 100))) < 18.5) {
      return "Underweight";
    } else if ((weight / ((height / 100) * (height / 100))) >= 18.5 &&
        (weight / ((height / 100) * (height / 100))) < 25) {
      return "Normal";
    } else if ((weight / ((height / 100) * (height / 100))) >= 25 &&
        (weight / ((height / 100) * (height / 100))) < 30) {
      return "Overweight";
    } else if ((weight / ((height / 100) * (height / 100))) >= 30) {
      return "Obese";
    }
    return " ";
  }

  String getBMIRange() {
    if ((weight / ((height / 100) * (height / 100))) < 18.5) {
      return "less than 18.5";
    } else if ((weight / ((height / 100) * (height / 100))) >= 18.5 &&
        (weight / ((height / 100) * (height / 100))) < 25) {
      return "18.5 - 24.9";
    } else if ((weight / ((height / 100) * (height / 100))) >= 25 &&
        (weight / ((height / 100) * (height / 100))) < 30) {
      return "25 - 29.9";
    } else if ((weight / ((height / 100) * (height / 100))) >= 30) {
      return "more than 30";
    }
    return " ";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leadingWidth: 40,
            leading: IconButton(
              padding: const EdgeInsets.only(left: 30),
              alignment: Alignment.centerRight,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              "Back",
              style: GoogleFonts.raleway(
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 18)),
            )),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Result",
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 200,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Text(
                        "Your BMI is",
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold , fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue[700]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              (weight / ((height / 100) * (height / 100)))
                                  .toStringAsFixed(1),
                              style: GoogleFonts.raleway(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.bold ,
                                    fontSize: 32,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                             Text(
                              "kg/m2",
                              style: GoogleFonts.raleway(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                            ),
                           )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "(${getBMIText()})",
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,

                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 115,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            gender == Gender.male ? Icons.man : Icons.woman,
                            size: 50,
                          ),
                          Text(
                            gender == Gender.male ? "Male" : "Female",
                            style: GoogleFonts.raleway(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            age.toString(),
                            style: GoogleFonts.raleway(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            "Age",
                            style: GoogleFonts.raleway(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                           ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            height.toString(),
                            style: GoogleFonts.raleway(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            "Height",
                            style: GoogleFonts.raleway(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            weight.toString(),
                              style: GoogleFonts.raleway(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                    fontSize: 26,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            "Weight",
                            style: GoogleFonts.raleway(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 210,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12, width: 2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Text(
                          "A BMI of ",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Text(
                          getBMIRange(),
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                fontWeight: FontWeight.w500,
                              color: Colors.blue
                            ),
                          ),
                        ),
                         Text(
                          " indicates that your",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Text(
                          "weight is in the ",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Text(
                          getBMIText(),
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue
                            ),
                          ),
                        ),
                         Text(
                          " category for a",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    ),
                     Text(
                      "person of your height",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
                      "Maintaining a healthy weight reduce the",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                     Text(
                      "risk of diseases associated with",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                     Text(
                      "overweight and obesity.",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  height: 60,
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child:  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Try Again",
                      style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.refresh,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const HomeScreen(),
                  ));
                },
              )
            ],
          ),
        ));
  }
}
