import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sign in and Sign up'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15181F),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
          left: MediaQuery.sizeOf(context).width - 130,
          top: -40,
          child: ClipOval(
            child: Container(
              color: Color(0xff1B1E27),
              width: 200,
              height: 200,
            ),
          ), ),
          Positioned(
              left: -80,
              top: 500,
              child: ClipOval(
                child: Container(
                  color: Color(0xff1B1E27),
                  width: 200,
                  height: 200,
                ),
              )),
           Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 30,
                      bottom: 7
                  ),
                  child: Text("Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color(0xff6E9AE5),
                  ),
                  ),
                ),
                Text("Create an account to get Started",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),

                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xff6386C9),
                            ),
                            cursorColor: Color(0xff6386C9),
                            decoration: InputDecoration(
                              fillColor: Color(0xff101115),
                              filled: true,
                              hintText: "Name",
                                contentPadding: EdgeInsets.only(
                                  left: 20,
                                ),
                              hintStyle: TextStyle(
                                color: Color(0xff373945),
                              ),
                              border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Color(0xff6386C9),
                                  width: 2,
                                )
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xff6386C9),
                            ),
                            cursorColor: Color(0xff6386C9),
                            decoration: InputDecoration(
                              fillColor: Color(0xff101115),
                              filled: true,
                              hintText: "Email",
                                contentPadding: EdgeInsets.only(
                                  left: 20,
                                ),
                              hintStyle: TextStyle(
                                color: Color(0xff373945),
                              ),
                              border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Color(0xff6386C9),
                                  width: 2,
                                )
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xff6386C9),
                            ),
                            cursorColor: Color(0xff6386C9),
                            decoration: InputDecoration(
                              fillColor: Color(0xff101115),
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                left: 20,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xff373945),
                              ),
                              border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Color(0xff6386C9),
                                  width: 2,
                                )
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

