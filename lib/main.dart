import 'package:arg/Pages/Attendance.dart';
import 'package:arg/Pages/Register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 209, 209, 209),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Row(
                children: [
                  const SizedBox(
                      height: 42,
                      width: 42,
                      child: Image(
                          image: AssetImage('assets/arg_logo_black.png'))),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'FormLink',
                    style: TextStyle(
                        fontSize: width * 0.09, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 67),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Streamline Data Entry',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.03),
                  )),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Enter Daily Attendance',
                style: TextStyle(
                    fontSize: width * 0.03, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance()));
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.5,
                decoration: BoxDecoration(
                    color: Color(0xff1C3564),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'Attendance',
                  style: TextStyle(
                      fontSize: width * 0.067,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Register Yourself',
                style: TextStyle(
                    fontSize: width * 0.03, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
              },
              child: Container(
                height: height * 0.05,
                width: width * 0.5,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 209, 209, 209),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1.5, color: Colors.black)),
                child: Center(
                    child: Text(
                  'Register',
                  style: TextStyle(
                      fontSize: width * 0.055,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1C3564)),
                )),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text('Note :',
                        style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w600)))
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                '• Register yourself before Attendance Entry\n• Register only using GSUITE ID\n• For confirmed submission an email will be sent to your email',
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: width * 0.034),
              ),
            ),
            Expanded(child: Container(height: 10)),
            SizedBox(
              height: height * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: height * 0.25,
                      width: width * 0.25,
                      child: const Image(
                          image: AssetImage('assets/ned_logo (1).png'))),
                  Text(
                    "CSIT",
                    style: TextStyle(
                        fontSize: width * 0.095, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: height * 0.25,
                      width: width * 0.25,
                      child: const Image(
                          image: AssetImage('assets/years_logo.png'))),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
              indent: width * 0.385,
              endIndent: width * 0.385,
              height: height * 0.006,
            ),
            Text(
              "Department of",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.035),
            ),
            Text(
              "Computer Science and Information Technology",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.035),
            ),
            SizedBox(
              height: height * 0.025,
            )
          ])),
    );
  }
}
