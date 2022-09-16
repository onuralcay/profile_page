import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:profile_page/numara_widgetlari.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final double coverHeight = 250.0;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
          buildAboutText(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverPhoto(),
        ),
        Positioned(
          top: top,
          child: buildProfilePhoto(),
        ),
      ],
    );
  }

  buildCoverPhoto() => Container(
        color: Colors.grey,
        child: Image.network(
            "https://images.unsplash.com/photo-1546900703-cf06143d1239?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80",
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover),
      );

  buildProfilePhoto() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey,
        backgroundImage: const AssetImage("assets/images/tattoo.jpg"),
      );

  buildContent() {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              const Text("Onur Alçay",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text(
                "Flutter Jr. Development",
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SignInButton(
                    Buttons.GitHub,
                    mini: true,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 5),
                  SignInButton(
                    Buttons.LinkedIn,
                    mini: true,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 5),
                  SignInButton(
                    Buttons.Twitter,
                    mini: true,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(),
              const SizedBox(
                height: 16,
              ),
              NumberWidget(),
              const SizedBox(
                height: 16,
              ),
              Divider(),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildAboutText() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hakkında",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
            "blabla bla blablabla blabla bla blablabla blabla bla blablabla blabla bla blablabla blabla bla \nblablabla blabla bla blablabla blabla bla blablabla blabla bla blablabla blabla bla blablabla blabla bla blablabla ")
      ],
    ),
  );
}
