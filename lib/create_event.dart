import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:steps_indicator/steps_indicator.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  var secondaryColor = const Color(0xFFC5B9FF);
  var primaryColor = const Color(0xFF846BFF);
  Object? selectedOption = "High";
  Object? selectedRecurring = "Low";
  var white = const Color(0xffffffff);
  var black = const Color(0xff000000);
  var menuVisible = false;
  var focusNode1 = FocusNode();
  var currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f6f6) ,
      body:  ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Spacer(),
                  const Text(
                    "Create an Event",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('lib/assets/close.svg')),
                  const SizedBox(
                    width: 100,
                  ),
                ]),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  // color: Colors.amber,
                  width: 1100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Step 1"),
                      Text("Step 2"),
                      Text("Step 3"),
                      Text("Step 4"),
                    ],
                  ),
                ),
                StepsIndicator(
                  selectedStep: currentStep,
                  nbSteps: 4,
                  selectedStepColorOut: const Color(0xFF846BFF),
                  selectedStepColorIn: Colors.white,
                  doneStepColor: const Color(0xFF846BFF),
                  doneLineColor: const Color(0xFF846BFF),
                  undoneLineColor: const Color(0xFF846BFF),
                  isHorizontal: true,
                  lineLength: 200,
                  doneStepSize: 50,
                  unselectedStepSize: 50,
                  selectedStepSize: 14,
                  selectedStepBorderSize: 10,
                  doneLineThickness: 3,
                  undoneLineThickness: 3,
                  doneStepWidget: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF846BFF)),
                  ), // Custom Widget
                  unselectedStepWidget: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFDDDDDD),
                    ),
                  ), // Custom Widget
                  selectedStepWidget: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF846BFF)),
                  ), // Custom Widget
                  // lineLengthCustomStep: [
                  //   StepsIndicatorCustomLine(nbStep: 3, length: 80)
                  // ],
                  enableLineAnimation: true,
                  enableStepAnimation: true,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (currentStep == 0)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: TextField(
                              focusNode: focusNode1,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Event name',
                              ),
                            ),
                          ),
                        if (currentStep == 0)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Description',
                              ),
                            ),
                          ),
                        if (currentStep == 0)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Language',
                              ),
                            ),
                          ),
                        if (currentStep == 0)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Suitable event age from',
                              ),
                            ),
                          ),
                        if (currentStep == 0)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Suitable event age to',
                              ),
                            ),
                          ),
                        if (currentStep == 1)
                          Container(
                              width: 400,
                              margin: const EdgeInsets.only(top: 10),
                              child: const Row(
                                children: [
                                  SizedBox(
                                    width: 195,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        hintText: 'Start Date dd/mm/yyyy',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 195,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        hintText: 'End Date dd/mm/yyyy',
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        if (currentStep == 1)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Start Time HH:MM',
                              ),
                            ),
                          ),
                        if (currentStep == 1)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Address',
                              ),
                            ),
                          ),
                        if (currentStep == 2)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Booking URL',
                              ),
                            ),
                          ),
                        if (currentStep == 2)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Booking Phone',
                              ),
                            ),
                          ),
                        if (currentStep == 2)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Booking Email',
                              ),
                            ),
                          ),
                        if (currentStep == 2)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Price',
                              ),
                            ),
                          ),
                        if (currentStep == 2)
                          const SizedBox(
                            height: 20,
                          ),
                        if (currentStep == 2)
                          const Text("Registration required ?"),
                        if (currentStep == 2)
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                Row(children: [
                                  Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (selectedRecurring == "Medium") {
                                          return Colors.blue;
                                        }
                                        return Colors.grey;
                                      },
                                    ),
                                    value: "Medium",
                                    groupValue: selectedRecurring,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRecurring = value;
                                      });
                                    },
                                  ),
                                  const Text("Yes")
                                ]),
                                Row(children: [
                                  Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (selectedRecurring == "Low") {
                                          return Colors.blue;
                                        }
                                        return Colors.grey;
                                      },
                                    ),
                                    value: "Low",
                                    groupValue: selectedRecurring,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRecurring = value;
                                      });
                                    },
                                  ),
                                  const Text("No")
                                ]),
                              ],
                            ),
                          ),
                        if (currentStep == 3)
                          const SizedBox(
                            height: 20,
                          ),
                        if (currentStep == 3)
                          const Text(
                            "Contact details of Event Manager",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        if (currentStep == 3)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Name',
                              ),
                            ),
                          ),
                        if (currentStep == 3)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Surname',
                              ),
                            ),
                          ),
                        if (currentStep == 3)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Phone',
                              ),
                            ),
                          ),
                        if (currentStep == 3)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Email',
                              ),
                            ),
                          ),
                        if (currentStep == 3)
                          Container(
                            width: 400,
                            margin: const EdgeInsets.only(top: 10, bottom: 20),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Company link for verification',
                              ),
                            ),
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            if (currentStep != 0)
                              GestureDetector(
                                onTap: () {
                                  if (currentStep != 0) {
                                    setState(() {
                                      currentStep--;
                                    });
                                  }
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  margin:
                                      const EdgeInsets.only(top: 0, bottom: 20),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Previuos",
                                      style: TextStyle(color: white),
                                    ),
                                  ),
                                ),
                              ),
                            const SizedBox(
                              width: 20,
                            ),
                            if (currentStep != 3)
                              GestureDetector(
                                onTap: () {
                                  if (currentStep != 3) {
                                    setState(() {
                                      currentStep++;
                                    });
                                  }
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  margin:
                                      const EdgeInsets.only(top: 0, bottom: 20),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Next",
                                      style: TextStyle(color: white),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        if (currentStep == 3)
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            margin: const EdgeInsets.only(top: 0, bottom: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Create Event",
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                      ]),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
