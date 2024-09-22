import 'package:flutter/material.dart'; // Die Packages vom flutter werden importiert

void main() {
  runApp(Bottomnavibar()); 
} // die Main Function

// Das ist die Startseite
class Bottomnavibar extends StatelessWidget {
  const Bottomnavibar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: navi(),
    );
  }
}


class navi extends StatefulWidget {
  const navi({super.key});

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SizedBox(
          height: 65,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Farbe vom Container
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Leichter transparenter Schatten
                  blurRadius: 10, // Weichzeichnung des Schattens
                  offset: Offset(0, 5), // Position des Schattens (x, y)
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},  // Hier wird man zu der nächsten Seite navigiert
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 56.0),
                      child: Icon(Icons.construction, color: Colors.blue),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 56.0),
                      child: Icon(Icons.manage_accounts, color: Colors.blue),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 56.0),
                      child: Icon(Icons.chat, color: Colors.blue),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 56.0),
                      child: Icon(Icons.settings, color: Colors.blue),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 56.0),
                      child: Icon(Icons.notifications, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
