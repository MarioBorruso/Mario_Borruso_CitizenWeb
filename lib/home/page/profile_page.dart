import 'package:citizen_web/home/preference/user_preference.dart';
import 'package:citizen_web/home/widgets/numbers_widget.dart';
import 'package:citizen_web/home/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import '../desktop_home.dart';
import '../model/user.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(66, 191, 47, 1.0),
          title: const Text("Profile"),
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
            ProfileWidget(
              imagePath: user.imagePath,
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 48),
            buildAbout(user),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: const TextStyle(color: Colors.white),
      )
    ],
  );

  Widget buildAbout(User user) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        )
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