import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});
  @override
  State<homeScreen> createState() => _State();
}

class _State extends State<homeScreen> {
  double bmi = 0;
  double height = 150;
  double weight = 0;
  double age = 0;
  bool isMale = false;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111427),
      appBar: AppBar(
        backgroundColor: Color(0xff111427),
        title: Center(
          child: Text(
            " [ BMI Calculator ]",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  // كونتر ال Male
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = !isMale;
                        isFemale = false;
                      });
                    },
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff202038),
                        border: Border.all(
                          color: isMale ? Colors.yellow : Colors.white,
                          width: 1,
                        ),
                        boxShadow: isMale
                            ? [
                                BoxShadow(
                                  color: Colors.yellow,
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ]
                            : [],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),

                          Icon(
                            Icons.male,
                            size: 100,
                            color: isMale ? Colors.yellow : Colors.blue,
                          ),

                          SizedBox(height: 10),

                          Text(
                            "MALE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: isMale ? Colors.yellow : Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // كونتر ال female
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFemale = !isFemale;
                        isMale = false;
                      });
                    },
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff202038),
                        border: Border.all(
                          color: isFemale ? Colors.yellow : Colors.white,
                          width: 2,
                        ),
                        boxShadow: isFemale
                            ? [
                                BoxShadow(
                                  color: Colors.yellow,
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ]
                            : [],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),

                          Icon(
                            Icons.female,
                            size: 100,
                            color: isFemale ? Colors.yellow : Colors.red,
                          ),

                          SizedBox(height: 10),

                          Text(
                            "FEMALE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: isFemale ? Colors.yellow : Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // كونتر ال height
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff202038),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      "${height.toInt()} cm",
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),

                    Slider(
                      min: 150,
                      max: 220,
                      value: height,
                      activeColor: Color(0xfff01664),
                      inactiveColor: Colors.grey,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  //كونتر ال weight
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff202038),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "${weight.toInt()} kg",
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Color(0xff505267),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            SizedBox(width: 13),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Color(0xff505267),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  //كونتر ال Age
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff202038),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "${age.toInt()} year",
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Color(0xff505267),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            SizedBox(width: 13),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0xff505267),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // زرار ال calculate
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bmi = weight / ((height / 100) * (height / 100));
                  });
                  print("BMI = ${bmi.toStringAsFixed(2)}");
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff01664),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // كونتر ال bmi
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff202038),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Center(
                  child: Text(
                    "BMI = ${bmi.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
