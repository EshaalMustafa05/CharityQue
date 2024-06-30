
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/SignUp.dart';
import 'package:project/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/SignUp.dart';
import 'package:project/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool value = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
      TextEditingController passwordController = TextEditingController();

      bool toggle = false;

      void simulatortoogle(){
        setState(() {
          toggle = !toggle;
        });
      }
    //   void loginWithFirebase() async {
    // try {
    //   SharedPreferences _pref = await SharedPreferences.getInstance();
    //   String email = emailController.text.trim();
    //   String password = passwordController.text.trim();

    //   // Check if the user exists in Firebase

    //   // ignore: unused_local_variable
    //   UserCredential userCredential = await FirebaseAuth.instance
    //       .signInWithEmailAndPassword(email: email, password: password);
    //   final _db = FirebaseFirestore.instance;
    //   final snapshot = await _db.collection('users').get();
    //   print(snapshot.docs.map((e) => {
    //         print(e.data()['email']),
    //         if (e.data()['email'] == email)
    //           {
    //             _db
    //                 .collection('users')
    //                 .doc(e.data()['uid'])
    //                 .update({"voting": true}),
    //             print(e.data()['voting']),
    //             print("Success"),
    //             print(e.data()['uid']),
    //             print(e.data()),
    //             print("Success"),

    //             if (e.data()['active'] == true)
    //               {
    //                 prefs.setString(
    //                     "userDetails",
    //                     json.encode({
    //                       "name": e.data()["Fullname"],
    //                       "email": e.data()["email"],
    //                       "contact": e.data()["phone"],
    //                       "active": e.data()["active"]
    //                     })),
    //                 Navigator.pushReplacement(
    //                   context,
    //                   MaterialPageRoute(builder: (context) => HomePage()),
    //                 ),
    //                 ScaffoldMessenger.of(context).showSnackBar(
    //                     SnackBar(content: Text("Succesfully Login")))
    //               }
    //             else
    //               {
    //                 ScaffoldMessenger.of(context).showSnackBar(
    //                     SnackBar(content: Text("Not Active By Admin")))
    //               }
    //           }
    //       }));

    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('Login Successful!'),
    //       duration: Duration(seconds: 2),
    //     ),
    //   );

    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const HomePage(),
    //     ),
    //   );
    //   } else {
    //     // Email not found in Firebase
    //     setState(() {
    //       emailError = 'Email not found. Create an account.';
    //     });

    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //         content: Text('Email not found. Create an account.'),
    //         duration: Duration(seconds: 2),
    //       ),
    //     );

    //     // Navigate to the register page after a delay
    //     Future.delayed(const Duration(seconds: 2), () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => SignUpPage()),
    //       );
    //     }
    //     );
    //   }
    // // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'user-not-found' || e.code == 'wrong-password') {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //         content: Text('Incorrect Email or Password.'),
    //         duration: Duration(seconds: 2),
    //       ),
    //     );
    //   } else {
    //     print("FirebaseAuthException: $e");
    //   }
    // } catch (e) {
    //   print("Exception caught: $e");
    // }}

     
  @override
  Widget build(BuildContext context) {

    MediaQuery.of(context);


    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: 
    SingleChildScrollView(
        child: Column(
          children: [
             Center(child: Image.asset('0000.png', width: 170, height: 150,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Text('Login',
                  style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 19, 120, 70),
                  fontSize: 40, ) ),
                ),
              ],
            ),
        
               const SizedBox(height: 15,), 
               Center(child:
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(height: 50, 
          child: TextField(
            controller: emailController,
          decoration: const InputDecoration(
            hintText: "Email:",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(15),)
            ),
            ),
              ),
        ),
        ),
              ),
        
        const SizedBox(height: 15,), 
              Center(child:
              Padding(padding: const EdgeInsets.only(left: 20, right: 20),
              child:
        SizedBox(height: 50,
          child: TextField(
            controller: passwordController,
          decoration: InputDecoration(
            hintText: "Password:",
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(15),)
            ),
            suffixIcon: IconButton(onPressed: simulatortoogle, icon: Icon(toggle?Icons.visibility: Icons.visibility_off,
            ) 
            )
            ),
            obscureText: !toggle,
              ),
        ),
        ),
        ),
        const SizedBox(height: 30,),
              Center(
                child:
                FancyButton(
                    button_text: 'Login',
                    button_height: 40,
                    button_width: 325,
                    button_radius: 30,
                    button_color: const Color.fromARGB(255, 29, 144, 106),
                    button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                    button_outline_width: 1.5,
                    button_text_color: Colors.white,
                    button_text_size: 22,
                    onClick: (){
                      if(emailController.text != '' && passwordController.text != ''){
                        Navigator.of(context).pushReplacement
                      (MaterialPageRoute(builder: (BuildContext context) => const HomePage(),
                  )
                  );
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Required Fields empty")));
                      }
                    }
                    ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New here?', 
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        )
                      ),
                      const SizedBox(width: 5,),

                      InkWell(
                        child: Text('Click here', 
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.blue,
                          )

                        ),

                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpPage(), ),);
                        },
                      ),

                      const SizedBox(width: 5,),

                      Text('to create an account', 
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 0, 0, 0)
                        )
                      ),
                    ],
                                ),
                ),
          ]
          ),
      ),
    );
  }
}