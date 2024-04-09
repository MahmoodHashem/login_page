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

  bool _visible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _visible = true;
  }

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
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 30,
                      bottom: 7
                  ),
                  child: Text("Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Roboto-Regular',
                    color: Color(0xff6E9AE5),
                  ),
                  ),
                ),
                const Text("Create an account to get Started",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
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
                            style: const TextStyle(
                              color: Color(0xff6386C9),
                            ),
                            cursorColor: const Color(0xff6386C9),
                            decoration: InputDecoration(
                              fillColor: const Color(0xff101115),
                              filled: true,
                              hintText: "Name",
                                contentPadding: const EdgeInsets.only(
                                  left: 20,
                                ),
                              hintStyle: const TextStyle(
                                color: Color(0xff373945),
                              ),
                              border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
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
                            style: const TextStyle(
                              color: Color(0xff6386C9),
                            ),
                            cursorColor: const Color(0xff6386C9),
                            decoration: InputDecoration(
                              fillColor: const Color(0xff101115),
                              filled: true,
                              hintText: "Email",
                                contentPadding: const EdgeInsets.only(
                                  left: 20,
                                ),
                              hintStyle: const TextStyle(
                                color: Color(0xff373945),
                              ),
                              border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
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
                            obscureText: _visible,
                            style: const TextStyle(
                              color:Color(0xff6386C9),
                            ),
                            cursorColor: const Color(0xff6386C9),
                            decoration: InputDecoration(
                              fillColor: const Color(0xff101115),
                              filled: true,
                              contentPadding:const EdgeInsets.only(
                                left: 20,
                              ),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                color: Color(0xff373945),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: IconButton(onPressed: (){
                                  setState(() {
                                    _visible = !_visible;
                                  });
                                }, icon: Icon(_visible? Icons.visibility : Icons.visibility_off)),
                              ),
                              border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
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
                ),
              ],
            ),
          ),

        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

