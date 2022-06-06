import 'dart:math';
import 'package:citizen_web/home/desktop_home.dart';
import 'package:citizen_web/home/page/tax_history_page.dart';
import 'package:flutter/material.dart';

final _random = Random();

List<String> tassa = [
  "1.258.00€   01/01/2022   Da pagare",
  "1.236.00€   01/02/2022   Pagata",
  "898.00€   01/03/2022   Pagata",
  "800.00€   01/04/2022   Da pagare",
  "1498.00€   01/05/2022   Da pagare",
  "587.00€   01/06/2022   Pagata",
  "785.00€   01/07/2022   Da pagare",
];

String tax = tassa[_random.nextInt(tassa.length)];
String tax1 = tassa[_random.nextInt(tassa.length)];
String tax2 = tassa[_random.nextInt(tassa.length)];
String tax3 = tassa[_random.nextInt(tassa.length)];
String tax4 = tassa[_random.nextInt(tassa.length)];
String tax5 = tassa[_random.nextInt(tassa.length)];

class TaxPage extends StatefulWidget {
  @override
  _TaxPageState createState() => _TaxPageState();

}

class _TaxPageState extends State<TaxPage> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) =>
          Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(66, 191, 47, 1.0),
              title: const Text("TaxPage"),
              actions: [
                buildCardWithIcon(
                  Icons.history,
                  context,
                      () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return TaxHistory();
                    }));
                  },
                  "Tax History",
                ),
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
            body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 250),
                    const Text(
                        "ULTIMA TASSA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 50,
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
                        fontSize: 30,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 150),
                    buildTax1(),
                    const SizedBox(height: 4),
                    buildTax2(),
                    const SizedBox(height: 4),
                    buildTax3(),
                    const SizedBox(height: 4),
                    buildTax4(),
                    const SizedBox(height: 4),
                    buildTax5(),
                    const SizedBox(height: 4),
                  ],
                ),
              ],
            ),
          ),
    );
  }

  Widget buildTax1() =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'TASSE',
              style: TextStyle(fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(
                      255, 251, 0, 1.0)),
            ),
            const SizedBox(height: 24),
            Text(
              tax1,
              style: const TextStyle(
                  fontSize: 30, height: 1.4, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget buildTax2() =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text(
              tax2,
              style: const TextStyle(
                  fontSize: 30, height: 1.4, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget buildTax3() =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text(
              tax3,
              style: const TextStyle(
                  fontSize: 30, height: 1.4, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget buildTax4() =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text(
              tax4,
              style: const TextStyle(
                  fontSize: 30, height: 1.4, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget buildTax5() =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text(
              tax5,
              style: const TextStyle(
                  fontSize: 30, height: 1.4, color: Colors.white),
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