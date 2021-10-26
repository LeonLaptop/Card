import 'package:card/colors.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ndialog/ndialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

double minSlideHeight = 360.0;
double maxSlideHeight = 530.0;

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: darkGreen,
            ),
            label: 'Card',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            backgroundColor: Colors.purple,
          ),
        ],
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        backdropEnabled: true,
        minHeight: minSlideHeight,
        maxHeight: maxSlideHeight,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),

        //=============== Slide Panel ===============
        panel: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 35.0, right: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 3,
                width: 70,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  //=============== Edit Card ===============
                  GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      print("Edit Card");
                    },
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                        color: darkGreen,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.assignment,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 14.0),
                            child: Text(
                              "Edit your card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //=============== Spenden Card ===============

              GestureDetector(
                onTap: () {
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: lightGreen,
                    content: SizedBox(
                      height: 260,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.public,
                                color: Colors.black,
                                size: 80.0,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Danke für deine Hilfe.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Mit jeder Verkauften Card spenden wir 1€ an die Baumpflanz organistation ~Greenpeace",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).show(context);
                  // ignore: avoid_print
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 50.0,
                          child: Center(child: Icon(Icons.public)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Du unterstützt die Umwelt!",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Mit jeder verkauften Card spenden \n wir 1€ an ~Greenpeace",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //=============== QR Code ===============
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  // ignore: avoid_print
                  print(
                    "QR-Code",
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(width: 1.0, color: Colors.grey),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 50.0,
                          child: Center(
                            child: Icon(Icons.memory),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "QR Code",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Share your conected page per social media.",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //=============== QR Code ===============
              const SizedBox(
                height: 25.0,
              ),
              GestureDetector(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.lock,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Soon, get even more out of your card!",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 160.0,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15.0)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        //=============== Background Panel ===============
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 65.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Text(
                  "Hello,",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 22),
                ),
                // ignore: prefer_const_constructors
                Text(
                  "Leon Schmidt",
                  style:
                      // ignore: prefer_const_constructors
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 10.0,
                  ),
                  child: Container(
                    height: 180.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.help,
                      size: 20.0,
                      color: greenGrey,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text(
                      "Hold your card one the back of your Phone.",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
