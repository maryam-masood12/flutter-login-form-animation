import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animated_login_screen/customCircle.dart';
import 'package:flutter_animated_login_screen/ringPainter.dart';
import 'package:flutter_animated_login_screen/ringPainter_2.dart';
import 'package:flutter_animated_login_screen/ringPainter_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
 late AnimationController animationController;
 late Animation<double> rotateAnimation;

@override
  void initState() {
    animationController = AnimationController(vsync: this , duration: Duration(seconds:3))..repeat();

    rotateAnimation = Tween<double>(begin: 2*pi,end :0).animate(CurvedAnimation
    (parent: animationController, curve: Curves.linear));

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 1, 19, 32),
      body: Center(
        child: 
        Stack(
        alignment:  .center,
          children:[ 

             AnimatedBuilder(
  animation: rotateAnimation,
  builder: (context, child) =>
     CustomPaint(
      size: const Size(350, 350),
      painter: RingPainter_3(rotateAnimation.value),
    ),
  
),

                    AnimatedBuilder(
  animation: rotateAnimation,
  builder: (context, child) =>
     CustomPaint(
      size: const Size(350, 350),
      painter: RingPainter_2(rotateAnimation.value),
    ),
  
),

         

                AnimatedBuilder(
  animation: rotateAnimation,
  builder: (context, child) =>
     CustomPaint(
      size: const Size(350, 350),
      painter: RingPainter(rotateAnimation.value),
    ),
  
),

     
             CustomPaint(
        size: const Size(350, 350),
        painter: CirclePainter(),
      ),

            Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color:  const Color.fromARGB(255, 1, 19, 32),
              borderRadius: BorderRadius.circular(200),
              boxShadow:[ BoxShadow(
               color: const Color.fromARGB(255, 17, 17, 18).withOpacity(0.6),
                       blurRadius: 2,
                   
                         ),]
              
            ),
            child: Column(
              children: [
          
                Padding(
                  padding: const EdgeInsets.only(top: 37 ,),
                  child: Text("Login", style: TextStyle(color: const Color.fromARGB(255, 7, 252, 252),
                   fontSize: 30, fontWeight: FontWeight.w900, letterSpacing: -0.5),),
                ),
          
                SizedBox(height: 22,),
          
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                     labelText: "Email",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                           floatingLabelStyle: TextStyle(
                            color: Colors.cyanAccent,
                              fontWeight: FontWeight.bold,
                                  ),
                  
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                       color: const Color.fromARGB(255, 7, 252, 252),
                                     width: 2,
                                          ),
                                          ),
                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                       color: const Color.fromARGB(255, 7, 252, 252),
                                       
                                           width: 2,
                                                    ),
                                                ),
                             )
                  
                  ),
                ),
          
                SizedBox(height: 20,),
          
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                     labelText: "Password",
                     labelStyle: TextStyle(
                             color: Colors.white,
                          ),
                  
                           floatingLabelStyle: TextStyle(
                            color: Colors.cyanAccent,
                              fontWeight: FontWeight.bold,
                                  ),
                  
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                       color: const Color.fromARGB(255, 107, 109, 110),
                                     width: 2,
                                          ),
                                          ),
                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                       color:  const Color.fromARGB(255, 7, 252, 252),
                                       
                                           width: 2,
                                                    ),
                                                ),
                             )
                  
                  ),
                ),
          
                SizedBox(height: 10,),
          
                Text("Forget your password?",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(height: 10,),
          
                SizedBox(
                  width: 250,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                           backgroundColor: const Color.fromARGB(255, 7, 252, 252),),
                                   onPressed: () {},
                                       child: Text(
                                                "Login",
                                     style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),
                                             ),
                                      )),
          
                                      SizedBox(height: 10,),
          
                Text("Signup",style: TextStyle(color:  const Color.fromARGB(255, 7, 252, 252),fontSize: 12),),
                SizedBox(height: 10,),
          
              ],
            ),
          ),]
        ),
        
        
      ),
     
    );
  }
}
