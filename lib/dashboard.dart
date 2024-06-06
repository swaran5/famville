import 'package:famville/create_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:steps_indicator/steps_indicator.dart';

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

  var colorList = [
    Color(0xFF846BFF),
    Color(0xBF846BFF),
    Color(0x80846BFF),
    Color(0x40846BFF)
  ];
  var secondaryColor = const Color(0xFFC5B9FF);
  var primaryColor = const Color(0xFF846BFF);
  Object? selectedOption = "High";
  Object? selectedRecurring = "Low";
  var white = const Color(0xffffffff);
  var black = const Color(0xff000000);
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
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFF6F6F6),
            toolbarHeight: 100,
            scrolledUnderElevation: 0,
            automaticallyImplyLeading: false,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 272,
                  height: 68,
                  child: SvgPicture.asset('lib/assets/main_logo.svg'),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CreateEvent()));
                  },
                  child: Container(
                    height: 50,
                    width: 268,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create New Event",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      menuVisible = !menuVisible;
                    });
                  },
                  child: SvgPicture.asset('lib/assets/goal_profile.svg'),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          body: Stack(children: [
            Container(
              height: 700,
              width: 300,
              color: const Color(0xFFf6f6f6),
              child: Column(children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Color(0x1A846BFF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(24, 16, 16, 16),
                        height: 28,
                        width: 28,
                        child: SvgPicture.asset('lib/assets/party_popper.svg'),
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SvgPicture.asset('lib/assets/menu_bottom.svg'),
              ]),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(376, 0, 76, 0),
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 68,
                      ),
                      Text(
                        "Hey Admin",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w700,
                            fontSize: 40),
                      ),
                      const SizedBox(height: 32),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 403,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      color: const Color(0xFFf6f6f6),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 6,
                                            color: const Color(0x40846BFF),
                                          ),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          SvgPicture.asset(
                                              'lib/assets/drafts.svg'),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataMap["Completed"].toString(),
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                "Drafts",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      color: const Color(0xFFf6f6f6),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 6,
                                            color: const Color(0x80846BFF),
                                          ),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          SvgPicture.asset(
                                              'lib/assets/drafts.svg'),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataMap["Completed"].toString(),
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                "In progress",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      color: const Color(0xFFf6f6f6),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 6,
                                            color: const Color(0xBF846BFF),
                                          ),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          SvgPicture.asset(
                                              'lib/assets/drafts.svg'),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataMap["Completed"].toString(),
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                "Pending",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      color: const Color(0xFFf6f6f6),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 6,
                                            color: const Color(0xFF846BFF),
                                          ),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          SvgPicture.asset(
                                              'lib/assets/drafts.svg'),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataMap["Completed"].toString(),
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                "Completed",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 76,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 600,
                                color: const Color(0xFFf6f6f6),
                                child: Column(children: [
                                  Container(
                                    height: 120,
                                    width: double.infinity,
                                    padding: const EdgeInsets.only(left: 56),
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFEAEAEA)),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Events",
                                              style: TextStyle(
                                                  color: black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24),
                                            ),
                                            Text(
                                              "Find the status of all you events here",
                                              style: TextStyle(
                                                  color: black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 36),
                                          child: Text(
                                            "Download as CSV",
                                            style: TextStyle(
                                                color: black,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 480,
                                    child: Row(children: [
                                      const SizedBox(
                                        width: 56,
                                      ),
                                      Expanded(
                                        child: PieChart(
                                          dataMap: dataMap,
                                          colorList: colorList,
                                          legendOptions: const LegendOptions(
                                            showLegendsInRow: false,
                                            legendPosition:
                                                LegendPosition.bottom,
                                            showLegends: false,
                                            // legendShape: _BoxShape.circle,
                                            legendTextStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          chartValuesOptions:
                                              const ChartValuesOptions(
                                            showChartValueBackground: false,
                                            showChartValues: false,
                                            showChartValuesInPercentage: false,
                                            showChartValuesOutside: false,
                                            decimalPlaces: 1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 72,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 480,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "Requested",
                                                      style: TextStyle(
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 24),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 6),
                                                        height: 4,
                                                        color: const Color(
                                                            0xff846BFF),
                                                      ),
                                                    ),
                                                    Text(
                                                      "2",
                                                      style: TextStyle(
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12),
                                                    ),
                                                  ]),
                                              Text(
                                                "Events that are yet to be approved by Famville",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "Approved",
                                                      style: TextStyle(
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 24),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 6),
                                                        height: 4,
                                                        color: const Color(
                                                            0xff846BFF),
                                                      ),
                                                    ),
                                                    Text(
                                                      "2",
                                                      style: TextStyle(
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12),
                                                    ),
                                                  ]),
                                              Text(
                                                "Events that are approved by Famville",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "Rejected",
                                                      style: TextStyle(
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 24),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 6),
                                                        height: 4,
                                                        color: const Color(
                                                            0xff846BFF),
                                                      ),
                                                    ),
                                                    Text(
                                                      "2",
                                                      style: TextStyle(
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12),
                                                    ),
                                                  ]),
                                              Text(
                                                "Events that require adherence to Famville policies",
                                                style: TextStyle(
                                                    color: black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                    ]),
                                  ),
                                ]),
                              ),
                            ),
                          ]),
                      const SizedBox(
                        height: 48,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Your Events",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w700,
                              fontSize: 40),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 500,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 120,
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 48),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFf6f6f6)),
                                  child: Row(children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      color: Color(0x1A846BFF),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "New moms seminar on handling toddlers",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 24),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "12/05/2024 - 14/05/2024",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "Requested",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    SvgPicture.asset(
                                        'lib/assets/edit_people.svg'),
                                  ]),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (menuVisible)
              Stack(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 50,
                    width: 100,
                    // margin: const EdgeInsets.only(top: 65),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.only(right: 10),
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
              ]),
          ]),
        ),
      ),
    );
  }
}
