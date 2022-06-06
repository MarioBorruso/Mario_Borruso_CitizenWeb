import 'dart:math';
import 'package:flutter/material.dart';

import '../desktop_home.dart';

final _random = Random();

List<String> importi = [
  "1.258.00€",
  "1.236.00€",
  "898.00€",
  "800.00€",
  "1498.00€",
  "587.00€",
  "785.00€",
];

List<String> dataE = [
  "01/01/2022",
  "01/02/2022",
  "01/03/2022",
  "01/04/2022",
  "01/05/2022",
  "01/06/2022",
  "01/07/2022",
];

List<String> dataS = [
  "01/08/2022",
  "01/09/2022",
  "01/10/2022",
  "01/11/2022",
  "01/12/2022",
];

List<String> pay = [
  "Da pagare",
  "Pagata",
];

String importo = importi[_random.nextInt(importi.length)];
String importo1 = importi[_random.nextInt(importi.length)];
String importo2 = importi[_random.nextInt(importi.length)];
String importo3 = importi[_random.nextInt(importi.length)];
String importo4 = importi[_random.nextInt(importi.length)];
String importo5 = importi[_random.nextInt(importi.length)];

String scadenza = dataS[_random.nextInt(dataS.length)];
String scadenza1 = dataS[_random.nextInt(dataS.length)];
String scadenza2 = dataS[_random.nextInt(dataS.length)];
String scadenza3 = dataS[_random.nextInt(dataS.length)];
String scadenza4 = dataS[_random.nextInt(dataS.length)];
String scadenza5 = dataS[_random.nextInt(dataS.length)];

String data = dataE[_random.nextInt(dataE.length)];
String data1 = dataE[_random.nextInt(dataE.length)];
String data2 = dataE[_random.nextInt(dataE.length)];
String data3 = dataE[_random.nextInt(dataE.length)];
String data4 = dataE[_random.nextInt(dataE.length)];
String data5 = dataE[_random.nextInt(dataE.length)];

String pagamento = pay[_random.nextInt(pay.length)];
String pagamento1 = pay[_random.nextInt(pay.length)];
String pagamento2 = pay[_random.nextInt(pay.length)];
String pagamento3 = pay[_random.nextInt(pay.length)];
String pagamento4 = pay[_random.nextInt(pay.length)];
String pagamento5 = pay[_random.nextInt(pay.length)];

class TaxHistory extends StatefulWidget {
  @override
  _TaxHistoryState createState() => _TaxHistoryState();
}

class _TaxHistoryState extends State<TaxHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(66, 191, 47, 1.0),
        title: const Text('Table Example'),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 80, 80, 0),
        child: Table(
          border: TableBorder.all(
              color: Colors.black, width: 2.5, style: BorderStyle.solid),
          children: [
            const TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Center(
                          child: Text(
                              'Importo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "poppins",
                              fontSize: 50,
                              color: Color.fromRGBO(255, 0, 0, 1.0),
                            ),
                          ),
                      ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        'Data emissione',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 50,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        'Data scadenza',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 50,
                          color: Color.fromRGBO(255, 0, 0, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        'Avvenuto Pagamento',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 50,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
            ),
            TableRow(children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                  child: Text(
                    importo,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins",
                      fontSize: 35,
                      color: Color.fromRGBO(238, 255, 0, 1.0),
                    ),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                  child: Text(
                    data,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins",
                      fontSize: 35,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                  ),
                ),
              ),
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(167, 0, 0, 1.0),
                            border: Border.all(color: Colors.black26),
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          scadenza,
                          style: const TextStyle(fontSize: 35, color: Color.fromRGBO(250, 255, 0, 1.0)),
                        ),
                      )
                  )
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                  child: Text(
                    pagamento,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins",
                      fontSize: 35,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                  ),
                ),
              ),
            ]),
            TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        importo1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(238, 255, 0, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        data1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(167, 0, 0, 1.0),
                                border: Border.all(color: Colors.black26),
                                borderRadius: const BorderRadius.all(Radius.circular(16))),
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              scadenza1,
                              style: const TextStyle(fontSize: 35, color: Color.fromRGBO(250, 255, 0, 1.0)),
                            ),
                          )
                      )
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        pagamento1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        importo2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(238, 255, 0, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        data2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(167, 0, 0, 1.0),
                                border: Border.all(color: Colors.black26),
                                borderRadius: const BorderRadius.all(Radius.circular(16))),
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              scadenza2,
                              style: const TextStyle(fontSize: 35, color: Color.fromRGBO(250, 255, 0, 1.0)),
                            ),
                          )
                      )
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        pagamento2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        importo3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(238, 255, 0, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        data3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(167, 0, 0, 1.0),
                                border: Border.all(color: Colors.black26),
                                borderRadius: const BorderRadius.all(Radius.circular(16))),
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              scadenza3,
                              style: const TextStyle(fontSize: 35, color: Color.fromRGBO(250, 255, 0, 1.0)),
                            ),
                          )
                      )
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        pagamento3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          fontSize: 35,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
            ),
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                    child: Text(
                      importo4,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 35,
                        color: Color.fromRGBO(238, 255, 0, 1.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                    child: Text(
                      data4,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 35,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(167, 0, 0, 1.0),
                              border: Border.all(color: Colors.black26),
                              borderRadius: const BorderRadius.all(Radius.circular(16))),
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            scadenza4,
                            style: const TextStyle(fontSize: 35, color: Color.fromRGBO(250, 255, 0, 1.0)),
                          ),
                        )
                    )
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                    child: Text(
                      pagamento4,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 35,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                    child: Text(
                      importo5,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 35,
                        color: Color.fromRGBO(238, 255, 0, 1.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                    child: Text(
                      data5,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 35,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(167, 0, 0, 1.0),
                              border: Border.all(color: Colors.black26),
                              borderRadius: const BorderRadius.all(Radius.circular(16))),
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            scadenza5,
                            style: const TextStyle(fontSize: 35, color: Color.fromRGBO(250, 255, 0, 1.0)),
                          ),
                        )
                    )
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Center(
                    child: Text(
                      pagamento5,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppins",
                        fontSize: 35,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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