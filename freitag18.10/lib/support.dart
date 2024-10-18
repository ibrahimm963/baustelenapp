import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFFE3E3E3),
        centerTitle: true,
        title: Text("Support",
        style: TextStyle(
          color: Color(0xFFCDB38B),
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: .0, bottom: 120.0,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.support_agent, size: 160, color: Color(0xFF551A8B),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Do you need help?",
                  style: TextStyle(
                    fontSize: 34,
                    color: Color(0xFFCDB38B),
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Text("Contact us!",
                style: TextStyle(
                  fontSize: 34,
                  color: Color(0xFFCDB38B),
                  fontWeight: FontWeight.bold
                ),),
                Spacer(),
                Column(
                  children: [
                    _containerList("adress", "", Icons.location_on, Icons.arrow_forward_ios_outlined)
                  ],
                )
              ],
              ),
          ),
        ],
      ),
    );
  }
  Widget _containerList(
    String title,
    String subtitle,
    IconData icon,
    IconData trailing,
  ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(icon),
      trailing: Icon(trailing),
    );
  }
}