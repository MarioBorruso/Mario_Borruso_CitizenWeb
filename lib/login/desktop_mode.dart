import 'package:citizen_web/login/widgets/login_form.dart';
import 'package:flutter/material.dart';

class DesktopMode extends StatefulWidget {
  @override
  _DesktopModeState createState() => _DesktopModeState();
}

class _DesktopModeState extends State<DesktopMode> {
  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    return Container(
        color: Color.fromRGBO(22, 82, 5, 1.0),
        child: Center(
            child: Container(
                height: heightSize * 0.65,
                width: widthSize * 0.65,
                child: Card(
                    elevation: 5,
                    child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('images/TARIP.png', height: heightSize * 0.7, width: widthSize * 0.6, semanticLabel: 'test'),
                                  )
                              )
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  padding: EdgeInsets.only(top: 20),
                                  color: Color.fromRGBO(66, 191, 47, 1.0),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('images/logo.png', height: heightSize * 0.20, width: widthSize * 0.20),
                                        SizedBox(height: 15),
                                        LoginForm(
                                            0, 0.009, 16, 0.04, 0.01, 0.04,
                                            75, 0.01, 0.007, 0.01, 0.006
                                        )
                                      ]
                                  )
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}