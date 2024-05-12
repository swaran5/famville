import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map<String, double> dataMap = {
    "Completed": 5,
    "In Progress": 3,
    "Drafts": 2,
    "Pending": 2,
  };

  var colorList = [Colors.green, Colors.orange, Colors.amber, Colors.red];
  var secondaryColor = const Color(0xFFC5B9FF);
  var primaryColor = const Color(0xFF846BFF);
  Object? selectedOption = "High";
  Object? selectedRecurring = "Low";
  var white = const Color(0xffffffff);
  var menuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          setState(() {
            menuVisible = false;
          });
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 120,
                              height: 120,
                              child:
                                  SvgPicture.asset('lib/assets/main_logo.svg')),
                          const Spacer(),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  menuVisible = !menuVisible;
                                });
                              },
                              child: SvgPicture.asset(
                                  'lib/assets/goal_profile.svg')),
                        ],
                      ),
                      if (menuVisible)
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 50,
                            width: 100,
                            margin: const EdgeInsets.only(top: 65),
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: secondaryColor),
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Profile"),
                                Text("Logout"),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                      height: 400,
                      width: 400,
                      child: PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                      )),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "List of Events",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 500,
                      width: 400,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 40,
                              width: 300,
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: secondaryColor),
                              child: Row(children: [
                                Text("$index Name : 3rd Birthday"),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text("Status : Completed"),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text("Edit"),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset('lib/assets/edit_people.svg'),
                              ]),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create an Event",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                hintText: 'Event name',
                              ),
                            ),
                          ),
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
                          Container(
                            height: 28,
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Row(children: [
                                  Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (selectedOption == "High") {
                                          return Colors.blue;
                                        }
                                        return Colors.grey;
                                      },
                                    ),
                                    value: "High",
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value;
                                        print("Button value: $value");
                                      });
                                    },
                                  ),
                                  const Text("Age 3 to 18")
                                ]),
                                Row(children: [
                                  Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (selectedOption == "Medium") {
                                          return Colors.blue;
                                        }
                                        return Colors.grey;
                                      },
                                    ),
                                    value: "Medium",
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value;
                                        print("Button value: $value");
                                      });
                                    },
                                  ),
                                  const Text("Age 18 to 45")
                                ]),
                                Row(children: [
                                  Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (selectedOption == "Low") {
                                          return Colors.blue;
                                        }
                                        return Colors.grey;
                                      },
                                    ),
                                    value: "Low",
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value;
                                        print("Button value: $value");
                                      });
                                    },
                                  ),
                                  const Text("Age 45+")
                                ]),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
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
                                        print("Button value: $value");
                                      });
                                    },
                                  ),
                                  const Text("One-time event")
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
                                        print("Button value: $value");
                                      });
                                    },
                                  ),
                                  const Text("Recurring event")
                                ]),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Contact details of Event Manager",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
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
                                hintText: 'Email',
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
        ),
      ),
    );
  }
}
