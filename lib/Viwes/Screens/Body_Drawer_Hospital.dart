import 'package:bloodbankasmaa/Controller/ApiLogin.dart';
import 'package:bloodbankasmaa/Viwes/Widgets/My_Buttom.dart';
import 'package:flutter/material.dart';
import 'Profile.dart';
import 'Request.dart';
class BodyDrawerHospital extends StatefulWidget {
  const BodyDrawerHospital({Key? key}) : super(key: key);
  static const String route = "BodyDrawerHospital";
  @override
  State<BodyDrawerHospital> createState() => _BodyDrawerHospitalState();
}

class _BodyDrawerHospitalState extends State<BodyDrawerHospital> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.red[100],
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {    Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return RequestBloodScreen();
              })); },
              child: Row(
                children: [  CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("Assent/Image/WhatsApp Image 2022-06-16 at 11.08.55 AM (2).jpeg"),
                ) , SizedBox(
                  width: 20,
                ),

                  Text(
                    "Requests",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Logout(context);
              },
              child: Row(children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage("Assent/Image/1000_F_295198999_I516vPVxTT5d2HxZIJu2NQx7I7hV5XdD.jpg"),
                ) ,
                SizedBox(
                  width: 20,
                ),
                Text("LogOut" ,  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800]),)
              ]),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyBottom(
                  colors: Colors.green[900],
                  asmaa: () {
                    getProfile();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {

                      return profile();
                    }

                    ));

                  },
                  Name: "Profile"),
            ), ],
        ),
      ),
    );
  }
}
