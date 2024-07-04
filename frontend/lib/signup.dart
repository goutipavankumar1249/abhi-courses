import 'package:flutter/material.dart';
import 'package:frontend/login.dart';

// class Signup extends StatefulWidget {
//   @override
//   _SignupState createState() => _SignupState();
// }
//
// class _SignupState extends State<Signup> {
//   bool isLogin = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(height: 24),
//               Center(
//                 child: Text(
//                   "Welcome to Abhi Trainings",
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(height: 24),
//               Container(
//                 width: 330,
//                 height: 60,
//                 decoration: BoxDecoration(
//                   color: Color(0x9949BBBD),
//                   borderRadius: BorderRadius.circular(33),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           isLogin = true;
//                         });
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => Login(),
//                           ),
//                         );
//                       },
//                       child: Container(
//                         width: 100,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: isLogin ? Color(0xFF49BBBD) : Colors.transparent,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Login",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           isLogin = false;
//                         });
//                       },
//                       child: Container(
//                         width: 100,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: !isLogin ? Color(0xFF49BBBD) : Colors.transparent,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Register",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 24),
//               Text(
//                 "Email Address",
//                 style: TextStyle(fontSize: 16, color: Colors.black),
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Color(0xFF49BBBD), width: 1),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   hintText: 'Enter your Email Address',
//                   hintStyle: TextStyle(color: Color(0xFFACACAC), fontSize: 15),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "User name",
//                 style: TextStyle(fontSize: 16, color: Colors.black),
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Color(0xFF49BBBD), width: 1),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   hintText: 'Enter your User name',
//                   hintStyle: TextStyle(color: Color(0xFFACACAC), fontSize: 15),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Password",
//                 style: TextStyle(fontSize: 16, color: Colors.black),
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Color(0xFF49BBBD), width: 1),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   hintText: 'Enter your Password',
//                   hintStyle: TextStyle(color: Color(0xFFACACAC), fontSize: 15),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 24),
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   width: 230,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF49BBBD),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   alignment: Alignment.center,
//                   child: Text(
//                     "Register",
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:frontend/login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 24),
              Center(
                child: Text(
                  "Welcome to Abhi Trainings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Image.asset(
                  'assets/images/course1.png', // Replace with your image path
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Container(
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0x9949BBBD),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLogin = true;
                          });
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: isLogin ? Color(0xFF49BBBD) : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLogin = false;
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: !isLogin ? Color(0xFF49BBBD) : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Email Address",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xFF49BBBD), width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your Email Address',
                  hintStyle: TextStyle(color: Color(0xFFACACAC), fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "User name",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xFF49BBBD), width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your User name',
                  hintStyle: TextStyle(color: Color(0xFFACACAC), fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Password",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xFF49BBBD), width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(color: Color(0xFFACACAC), fontSize: 15),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF49BBBD),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}