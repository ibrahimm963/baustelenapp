import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool light = true;
  bool light2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Icon(Icons.account_circle, size: 98,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, bottom: 3.0,),
              child: Text("Example User",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: Text("example.mail@gmail.com",
                style: TextStyle(
                    color: Color.fromARGB(255, 140, 138, 138),
                    fontWeight: FontWeight.w600
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 42.0),
              child: Container( width: 120, height: 44,
                child: Center(child: Text("Edit profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 258.0),
                child: Text("Inventories",
                  style: TextStyle(
                      color: Color.fromARGB(255, 140, 138, 138),
                      fontWeight: FontWeight.w800,
                      fontSize: 13
                  ),),
              ),
            ),
            SizedBox(width: 380, height: 136,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset("assets/bauprojektmystoresicon.PNG"),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Text("My stores",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Icon(Icons.arrow_forward, color: Color.fromARGB(
                          255, 147, 146, 146),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/bauprojektsupporticon.PNG"),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text("Support",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Icon(Icons.arrow_forward, color: Color.fromARGB(
                          255, 147, 146, 146),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, top: 12.0,),
              child: Padding(
                padding: const EdgeInsets.only(right: 254.0),
                child: Text("Preferences",
                  style: TextStyle(
                      color: Color.fromARGB(255, 140, 138, 138),
                      fontWeight: FontWeight.w800,
                      fontSize: 13
                  ),),
              ),
            ),
            Container(width: 380, height: 280,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset("assets/bauprojektnotificationsicon.PNG"),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text("Push notifications",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Switch(value: light, onChanged: (bool value) {
                        setState(() {
                          light = value;
                        });
                      },
                        activeColor: Colors.green,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/bauprojektfaceidicon.PNG"),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text("Face ID",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      trailing: Switch(value: light2, onChanged: (bool value) {
                        setState(() {
                          light2 = value;
                        });
                      },
                        activeColor: Colors.green,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/bauprojektpinicon.PNG"),
                      title: Text("PIN Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),),
                      trailing: Icon(Icons.arrow_forward, color: Color.fromARGB(
                          255, 147, 146, 146),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        width: 337, height: 1, color: Color.fromARGB(255, 203, 198, 209),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/bauprojektlogouticon.PNG"),
                      title: Text("Logout",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 23, 23),
                            fontWeight: FontWeight.w600
                        ),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
