import 'package:citizen_web/home/desktop_home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final paddingTopForm, fontSizeTextField, fontSizeTextFormField, spaceBetweenFields, iconFormSize;
  final spaceBetweenFieldAndButton, widthButton, fontSizeButton, fontSizeForgotPassword, fontSizeSnackBar, errorFormMessage;

  LoginForm(
      this.paddingTopForm, this.fontSizeTextField, this.fontSizeTextFormField, this.spaceBetweenFields, this.iconFormSize, this.spaceBetweenFieldAndButton,
      this.widthButton, this.fontSizeButton, this.fontSizeForgotPassword, this.fontSizeSnackBar, this.errorFormMessage
      );

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    var passController = TextEditingController();
    var usernameController = TextEditingController();

    Future<void> login() async{
      if(passController.text.isNotEmpty && usernameController.text.isNotEmpty) {
        var response = await http.post(
            Uri.parse("https://reqres.in/api/login"),
            body: ({
              'email': usernameController.text,
              'password': passController.text
            })
        );
        if (response.statusCode == 200) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DesktopHome()));
        }
      }
    }

    return Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.only(left: widthSize * 0.05, right: widthSize * 0.05, top: heightSize * paddingTopForm),
            child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Username', style: TextStyle(
                          fontSize: widthSize * fontSizeTextField,
                          fontFamily: 'poppins',
                          color: Colors.white)
                      )
                  ),
                  TextFormField(
                      controller: usernameController,
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'FiscalCode';
                        }
                        if(value.length < 16){
                          return 'FiscalCode';
                        }
                        return null;
                      },
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent.shade700, width: 2)
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2)
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white, fontSize: widthSize * errorFormMessage),
                        prefixIcon: Icon(
                          Icons.person,
                          size: widthSize * iconFormSize,
                          color: Colors.white,
                        ),
                      ),
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: fontSizeTextFormField)
                  ),
                  SizedBox(height: heightSize * spaceBetweenFields),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password', style: TextStyle(
                          fontSize: widthSize * fontSizeTextField,
                          fontFamily: 'Poppins',
                          color: Colors.white)
                      )
                  ),
                  TextFormField(
                      controller: passController,
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'Enter Password';
                        }
                        return null;
                      },
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent.shade700, width: 2)
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2)
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white, fontSize: widthSize * errorFormMessage),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: widthSize * iconFormSize,
                          color: Colors.white,
                        ),
                      ),
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: fontSizeTextFormField)
                  ),
                  SizedBox(height: heightSize * spaceBetweenFieldAndButton),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.fromLTRB(widthButton, 15, widthButton, 15),
                      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                      onPressed: () {
                      login();
                      },
                      child: Text('LOGIN', style: TextStyle(
                          fontSize: widthSize * fontSizeButton,
                          fontFamily: 'Poppins',
                          color: Color.fromRGBO(0, 0, 0, 1.0))
                      )
                  ),
                  SizedBox(height: heightSize * 0.01),
                  Text('Compile the form', style: TextStyle(
                      fontSize: widthSize * fontSizeForgotPassword,
                      fontFamily: 'Poppins',
                      color: Colors.white)
                  )
                ]
            )
        )
    );
  }
}
