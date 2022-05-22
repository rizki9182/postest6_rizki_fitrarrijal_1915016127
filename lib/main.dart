import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:postest6_rizki_fitrarrijal_1915016127/SplashScreen.dart';
import 'package:postest6_rizki_fitrarrijal_1915016127/getx_controller/switch_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum kosSewa { unknown, KosIndah, kosRawin, kosMeta }

class _MyHomePageState extends State<MyHomePage> {
  final namaPenyewaCtrl = TextEditingController();

  kosSewa kossewa = kosSewa.unknown;
  bool kamarMandiDalam = false;
  bool acDalam = true;
  String namaPenyewa = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaPenyewaCtrl.dispose();
    super.dispose();
  }

  String getKosSewa(kosSewa? value) {
    if (value == kosSewa.KosIndah) {
      return "Kos Indah";
    } else if (value == kosSewa.kosRawin) {
      return "Kos Rawin";
    } else if (value == kosSewa.kosMeta) {
      return "Kos Meta";
    }
    return "Belum Milih";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      color: Color.fromARGB(255, 5, 175, 90), width: 3),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 5, 175, 90),
                                width: 3),
                            image: DecorationImage(
                              image: AssetImage("assets/images/kos2.jpg"),
                            )),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            "Kos Indah",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Jln. Pramuka 3, No.56",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 80, 80)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      color: Color.fromARGB(255, 5, 175, 90), width: 3),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 5, 175, 90),
                                width: 3),
                            image: DecorationImage(
                              image: AssetImage("assets/images/kos1.jpg"),
                            )),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            "Kos Rawin",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Jln. Alam Segar, No.16",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 80, 80)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      color: Color.fromARGB(255, 5, 175, 90), width: 3),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                color: Color.fromARGB(255, 5, 175, 90),
                                width: 3),
                            image: DecorationImage(
                              image: AssetImage("assets/images/kos2.jpeg"),
                            )),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            "Kos Meta",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Jln. Perjuangan, No.6",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 80, 80)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 175, 90),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Sewa Kos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Nama Penyewa : $namaPenyewa'),
              Text('Kos : ${getKosSewa(kossewa)} '),
              Text('Tambahan :  ${kamarMandiDalam ? "none" : "none"}'),

              const SizedBox(height: 20), // Margin Bohongan
              TextField(
                maxLines: 2,
                controller: namaPenyewaCtrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Penyewa",
                  hintText: 'Isi Nama Anda',
                ),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              Row(children: [
                Expanded(
                  child: ListTile(
                    title: const Text("Kos Indah"),
                    leading: Radio(
                      groupValue: kossewa,
                      value: kosSewa.KosIndah,
                      onChanged: (kosSewa? value) {
                        setState(() {
                          kossewa = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text("Kos Rawin"),
                    leading: Radio(
                      groupValue: kossewa,
                      value: kosSewa.kosRawin,
                      onChanged: (kosSewa? value) {
                        setState(() {
                          kossewa = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                    child: ListTile(
                  title: const Text("Kos Meta"),
                  leading: Radio(
                    value: kosSewa.kosMeta,
                    groupValue: kossewa,
                    onChanged: (kosSewa? value) {
                      setState(() {
                        kossewa = value!;
                      });
                    },
                  ),
                )),
              ]),
              Row(
                children: [
                  Expanded(
                      child: ListTile(
                    title: const Text("Kamar Mandi Dalam"),
                    leading: Checkbox(
                      value: kamarMandiDalam,
                      onChanged: (bool? value) {
                        setState(() {
                          kamarMandiDalam = value!;
                        });
                      },
                    ),
                  )),
                  Expanded(
                      child: ListTile(
                    title: const Text("Ac"),
                    leading: Checkbox(
                      value: acDalam,
                      onChanged: (bool? value) {
                        setState(() {
                          acDalam = value!;
                        });
                      },
                    ),
                  )),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                namaPenyewa = namaPenyewaCtrl.text;
              });
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 5, 175, 90)),
            child: Text(
              "Tampilkan",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Rizki Fitrarrijal/1915016127",
            style: TextStyle(color: Color.fromARGB(255, 77, 77, 77)),
          )
        ],
      ),
    );
  }
}

class koskosanFirstPage extends StatelessWidget {
  // const koskosanFirstPage({Key? key}) : super(key: key);

  final SwitchController v = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aplikasi Cari Kos",
          style: TextStyle(
              color: Color.fromARGB(255, 5, 175, 90),
              fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 5, 175, 90)),
        flexibleSpace: Obx(() => Container(
              color: v.switchValue.value
                  ? Colors.white
                  : Color.fromARGB(255, 5, 175, 90),
            )),
        actions: [
          Obx((() => Switch(
              value: v.switchValue.value,
              onChanged: (value) {
                v.switchValue(value);
              },
              thumbColor:
                  MaterialStateColor.resolveWith((states) => Colors.black),
              trackColor:
                  MaterialStateColor.resolveWith((states) => Colors.grey))))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 5, 175, 90)),
              child: Text(
                "Cari Kos",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
            ),
            ListTile(
              leading: Icon(Icons.app_registration_outlined),
              title: Text("Register"),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    // border: Border.all(width: 2, color: Colors.black),
                    image: DecorationImage(
                        image: AssetImage("assets/images/home4.png"))),
              ),
            ),
            Text("Info Kos-Kosan Maseh"),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 30,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 175, 90),
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: ElevatedButton(
                  child: Text(
                    "Cari Kos ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 5, 175, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return mainPageApp();
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class mainPageApp extends StatefulWidget {
  const mainPageApp({Key? key}) : super(key: key);

  @override
  State<mainPageApp> createState() => _mainPageAppState();
}

class _mainPageAppState extends State<mainPageApp> {
  int _index = 0;

  List<Widget> pages = [
    MyHomePage(),
    Text("Search"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aplikasi Cari Kos",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 5, 175, 90),
      ),
      body: pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
