import 'dart:math';

import 'package:citizen_web/home/page/about_us_page.dart';
import 'package:citizen_web/home/page/profile_page.dart';
import 'package:citizen_web/home/page/quality_page.dart';
import 'package:citizen_web/home/page/tax_page.dart';
import 'package:flutter/material.dart';

import '../chart/legend_option_chart.dart';
import '../chart/pie_chart.dart';

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

List<String> tip = [
  "Mantenere alta la qualità,"
      "fa bene all'ambiente.",
  "Mantenere alta la qualità,"
      "aiuta a tenere bassi i costi",
  "Smistare correttamente i rifiuti,"
      "farà alzare la tua qualità",
  "Ricordati di controllare le tue tasse,"
      "potrebbero esserci tasse non pagate",
  "Se la tua qualità è inferiore a 2.5,"
      "prova a smistare meglio i tuoi rifiuti"
];

List<String> tassa = [
  "1.258.00€   01/01/2022   Da pagare",
  "1.236.00€   01/02/2022   Pagata",
  "898.00€   01/03/2022   Pagata",
  "800.00€   01/04/2022   Da pagare",
  "1498.00€   01/05/2022   Da pagare",
  "587.00€   01/06/2022   Pagata",
  "785.00€   01/07/2022   Da pagare",
];

final _random = new Random();

class DesktopHome extends StatelessWidget {
  String element = tip[_random.nextInt(tip.length)];
  String tax = tassa[_random.nextInt(tassa.length)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(66, 191, 47, 1.0),
        title: const Text("Citizen Home"),
      ),
      backgroundColor: const Color.fromRGBO(22, 82, 5, 1.0),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              const SizedBox(height: 565, width: 40),
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
              const SizedBox(width: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                      "TIP OF THE DAY",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 40,
                        color: Color.fromRGBO(245, 255, 0, 1.0),
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center
                  ),
                  const SizedBox(height: 20),
                  Text(
                    element,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 100),
                  const Text(
                      "ULTIMA TASSA",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 40,
                        color: Color.fromRGBO(255, 0, 0, 1.0),
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center
                  ),
                  const SizedBox(height: 20),
                  Text(
                    tax,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          BottomAppBar(
            color: const Color.fromRGBO(66, 191, 47, 1.0),
              child: Row(
                children: [
                  buildCardWithIcon(
                    Icons.person,
                    context,
                        () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ProfilePage();
                      }));
                    },
                    "Profile Page",
                  ),
                  buildCardWithIcon(
                    Icons.attach_money,
                    context,
                        () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return TaxPage();
                      }));
                    },
                    "Tax Page",
                  ),
                  buildCardWithIcon(
                    Icons.high_quality_outlined,
                    context,
                        () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return QualityPage();
                      }));
                    },
                    "Quality Page",
                  ),
                  const SizedBox(width: 300),
                  const Text(
                    "TARIP",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(21, 82, 0, 1.0),
                    ),
                  ),
                  const SizedBox(width: 530),
                  buildCardWithIcon(
                    Icons.question_mark,
                    context,
                        () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AboutUs();
                      }));
                    },
                    "About Us",
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Padding buildCardWithIcon(
      IconData icon, context, VoidCallback onTap, String pageName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
      child: InkWell(
        onTap: onTap,

        child: Card(
          elevation: 50,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 40,
                color: const Color.fromRGBO(66, 191, 47, 1.0),
              ),
              const SizedBox(
                height: 0.5,
              ),
              Text(
                pageName,
                style: const TextStyle(
                  fontSize: 20,
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