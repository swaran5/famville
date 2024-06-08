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
      backgroundColor: const Color(0xFFf6f6f6),
      body: ScrollConfiguration(
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
                  "Create a new event",
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
              Container(
                color: white,
                width: 900,
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Step 1",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                    Text(
                      "Step 2",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                    Text(
                      "Step 3",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                    Text(
                      "Step 4",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                color: white,
                width: 900,
                padding:
                    const EdgeInsets.only(bottom: 20, left: 100, right: 100),
                child: StepsIndicator(
                  selectedStep: currentStep,
                  nbSteps: 4,
                  selectedStepColorOut: const Color(0xFF846BFF),
                  selectedStepColorIn: Colors.white,
                  doneStepColor: const Color(0xFF846BFF),
                  doneLineColor: const Color(0xFF846BFF),
                  undoneLineColor: const Color(0xFF846BFF),
                  isHorizontal: true,
                  lineLength: 180,
                  doneStepSize: 50,
                  unselectedStepSize: 40,
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
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: TextField(
                            focusNode: focusNode1,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Event name',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 0)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Description',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 0)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Language',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 0)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Suitable event age from',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 0)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Suitable event age from',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 1)
                        Container(
                          width: 400,
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 195,
                                color: white,
                                padding: const EdgeInsets.only(left: 30),
                                margin: const EdgeInsets.only(top: 10),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Start date',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 195,
                                color: white,
                                padding: const EdgeInsets.only(left: 30),
                                margin: const EdgeInsets.only(top: 10),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'End date',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (currentStep == 1)
                        Container(
                          width: 400,
                          child: Row(
                            children: [
                              Container(
                                width: 195,
                                color: white,
                                padding: const EdgeInsets.only(left: 30),
                                margin: const EdgeInsets.only(top: 10),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Start time',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 195,
                                color: white,
                                padding: const EdgeInsets.only(left: 30),
                                margin: const EdgeInsets.only(top: 10),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'End time',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9A9A9A),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (currentStep == 1)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Address',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 1)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Zip Code',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 1)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'City',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 2)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Booking URL',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 2)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Booking Phone',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 2)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Booking Email',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 2)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Price',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 2)
                        const SizedBox(
                          height: 20,
                        ),
                      if (currentStep == 2)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 500),
                          child: CheckboxListTile(
                            title: const Text(
                              "Registration Required",
                              style: TextStyle(
                                  color: Color(0xff9A9A9A),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                            value: false,
                            onChanged: (newValue) {
                              setState(() {
                                // checkedValue = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                        ),
                      if (currentStep == 3)
                        const SizedBox(
                          height: 20,
                        ),
                      if (currentStep == 3)
                        Container(
                          padding: const EdgeInsets.only(left: 530),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Event manager details",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      if (currentStep == 3)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 30),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'First Name',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 3)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Last Name',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 3)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      if (currentStep == 3)
                        Container(
                          width: 400,
                          color: white,
                          padding: const EdgeInsets.only(left: 30),
                          margin: const EdgeInsets.only(top: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: SvgPicture.asset(
                                    "lib/assets/previous.svg"),
                              ),
                            ),
                          const SizedBox(
                            width: 300,
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
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child:
                                    SvgPicture.asset("lib/assets/next.svg"),
                              ),
                            ),
                          if (currentStep == 3)
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14),
                              margin:
                                  const EdgeInsets.only(top: 30, bottom: 20),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Create Event",
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                        ],
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
