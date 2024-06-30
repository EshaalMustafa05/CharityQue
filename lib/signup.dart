
import 'dart:developer';

import 'package:project/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {

  bool value = false;
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController whatsappController = TextEditingController();

      bool toggle = false;

      void simulatortoogle(){
        setState(() {
          toggle = !toggle;
        });
      }

      Future<void> signUp() async {
    try {
      final FirebaseAuth _auth = FirebaseAuth.instance;
      log(emailController.text);
      log(passwordController.text);
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Successfully account created!'),
          duration: Duration(seconds: 2),
        ),
      );
      // Move to another screen after successful registration
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Registration failed. Please try again.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

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
                  child: Text('SignUp',
                  style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 19, 120, 70),
                  fontSize: 40, ) ),
                ),
              ],
            ),
        
               const SizedBox(height: 15,), 
              Center(child:
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(height: 50, 
          child: TextField(
            controller: nameController,
          decoration: const InputDecoration(
            hintText: "Name:",
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
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
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
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2,),
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

        const SizedBox(height: 15,),
        Center(child:
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2,),
              child:
        SizedBox(height: 50,
          child: TextField(
            controller: confirmpasswordController,
          decoration: InputDecoration(
            hintText: "Confirm Password:",
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

        const SizedBox(height: 15,),
             Center(child:
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(height: 50, 
          child: TextField(
            controller: whatsappController,
          decoration: const InputDecoration(
            hintText: "WhatsApp Number:",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(15),)
            ),
            ),
              ),
        ),
        ),
              ),
        const SizedBox(height: 30,),
              Center(
                child:
                FancyButton(
                    button_text: 'SignUp',
                    button_height: 40,
                    button_width: 370,
                    button_radius: 15,
                    button_color: const Color.fromARGB(255, 29, 144, 106),
                    button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                    button_outline_width: 1.5,
                    button_text_color: Colors.white,
                    button_text_size: 22,
                    onClick: (){
                      if(emailController.text != '' && passwordController.text != '' && nameController.text != '' && confirmpasswordController.text != '' && whatsappController.text != ''){
                       signUp();
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Required Fields Are Empty")));
                      }
                    }
                    ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?', 
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        )
                      ),
                      const SizedBox(width: 5,),

                      InkWell(
                        child: Text('Login', 
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.blue,
                          )

                        ),

                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
                        },
                      ),
                    ],
                                ),
                ),
          ],
          ),
      ),
    );
  }
}