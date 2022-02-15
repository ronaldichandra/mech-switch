import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mechanical_switch/second.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Product Sans'),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F2F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 137),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Halo..',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff410005),
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Siapa namamu?',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff410005),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 56.0),
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Color(0xff775655), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff775655), width: 2),
                        ),
                        hintText: 'Ketik namamu di sini..',
                        contentPadding: EdgeInsets.all(11),
                        hintStyle: TextStyle(
                            color: Color(0xff775655),
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal)),
                    controller: myController,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 24.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffA53A3C))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Second(name: myController.text);
                    }));
                  },
                  child: Text(
                    'Masuk',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
