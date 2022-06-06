import 'package:citizen_web/home/model/us.dart';
import 'package:citizen_web/home/preference/us_preference.dart';
import 'package:citizen_web/home/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

import '../desktop_home.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();

}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    const us = UsPReference.myUs;

    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(66, 191, 47, 1.0),
          title: const Text("About Us"),
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
        body: ListView(
          children: [
            const SizedBox(height: 24),
            buildName(us),
            const SizedBox(height: 100),
            buildAbout(us),
          ],
        ),
      ),
    );
  }

  Widget buildName(Us us) => Column(
    children: [
      Column(
        children: [
          ProfileWidget(
            imagePath: us.imagePath,
          ),
          Text(
            us.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 48, color: Colors.white),
          ),
        ],
      ),
    ],
  );

  Widget buildAbout(Us us) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              us.about,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            )
          ],
        ),
        const SizedBox(width: 120),
        Text(
          us.componenti,
          style: const TextStyle(fontSize: 30, color: Colors.white),
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