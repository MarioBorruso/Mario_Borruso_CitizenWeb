import 'dart:math';
import 'package:citizen_web/home/page/quality_page.dart';
import 'package:citizen_web/home/page/tax_page.dart';
import 'package:flutter/material.dart';

final _random = Random();

List<String> quality = [
  "0",
  "0.5",
  "1",
  "1.5",
  "2",
  "2.5",
  "3",
  "3.5",
  "4",
  "4.5",
  "5",
];

List<String> tax = [
  "0",
  "1",
  "2",
  "3",
];

String tassa = tax[_random.nextInt(tax.length)];
String qualy = quality[_random.nextInt(quality.length)];

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buildButton(context, 'Quality', qualy),
      buildDivider(),
      buildButton(context, 'UnpaidTax', tassa),
      buildDivider(),
      buildButton(context, 'FiscalCode', 'RSSMRA90A01H501W'),
    ],
  );
  Widget buildDivider() => const SizedBox(
    height: 24,
    child: VerticalDivider(),
  );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        onPressed: () async {
          if(value == 'Quality'){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QualityPage()));
          }
          if(value == 'UnpaidTax'){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaxPage()));
          }
        },
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      );
}