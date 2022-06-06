import 'dart:math';

import 'package:flutter/material.dart';

import '../../chart/legend_option_chart.dart';
import '../../chart/pie_chart.dart';
import '../desktop_home.dart';

final _random = Random();

List<double> _enum = [
  0.0,
  0.5,
  1.0,
  1.5,
  2.0,
  2.5,
  3.0,
  3.5,
  4.0,
  4.5,
  5.0
];

List<String> quality = [
  "LOW",
  "LOW_MEDIUM",
  "MEDIUM",
  "MEDIUM_HIGH",
  "HIGH",
];

String q1 = quality[_random.nextInt(quality.length)];
String q2 = quality[_random.nextInt(quality.length)];
String q3 = quality[_random.nextInt(quality.length)];
String q4 = quality[_random.nextInt(quality.length)];

double _num1 = _enum[_random.nextInt(_enum.length)];
double _num2 = _enum[_random.nextInt(_enum.length)];
double _num3 = _enum[_random.nextInt(_enum.length)];
double _num4 = _enum[_random.nextInt(_enum.length)];

Map<String, double> dataMap = {
  "Primo trimestre": _num1,
  "Secondo trimestre": _num2,
  "Terzo trimestre": _num3,
  "Quarto trimestre": _num4,
};

class QualityPage extends StatefulWidget {
  @override
  _QualityPageState createState() => _QualityPageState();

}

class _QualityPageState extends State<QualityPage>{
  @override
  Widget build(BuildContext context){

    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(66, 191, 47, 1.0),
          title: const Text("QualityPage"),
          actions: [
            buildCardWithIcon(
              Icons.home,
              context,
                  () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) {
                  return DesktopHome();
                }));
              },
              "Home",
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(22, 82, 5, 1.0),
        body: Row(
          children: [
            const SizedBox(width: 50),
            PieChart(
              dataMap: dataMap,
              chartRadius: 250,
              chartType: ChartType.ring,
              legendOptions: const LegendOptions(
                showLegendsInRow: true,
                legendPosition: LegendPosition.bottom,
                showLegends: true,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 150),
            Column(
              children: [
                const SizedBox(height: 200),
                buildQuality1(),
                const SizedBox(height: 4),
                buildQuality2(),
                const SizedBox(height: 4),
                buildQuality3(),
                const SizedBox(height: 4),
                buildQuality4(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuality1() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'YOUR QUALITY',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromRGBO(
              255, 251, 0, 1.0)),
        ),
        const SizedBox(height: 24),
        Text(
          "La tua qualità nel primo trimestre ha un valore di: $q1",
          style: const TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Widget buildQuality2() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          "La tua qualità nel secondo trimestre ha un valore di: $q2",
          style: const TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Widget buildQuality3() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          "La tua qualità nel terzo trimestre ha un valore di: $q3",
          style: const TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Widget buildQuality4() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          "La tua qualità nel quarto trimestre ha un valore di: $q4",
          style: const TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Padding buildCardWithIcon(IconData icon, context, VoidCallback onTap, String pageName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 25,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 25,
                color: const Color.fromRGBO(66, 191, 47, 1.0),
              ),
              const SizedBox(
                height: 0.5,
              ),
              Text(
                pageName,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(66, 191, 47, 1.0),
                ),
                softWrap: true,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

}