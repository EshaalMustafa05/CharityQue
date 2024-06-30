import 'package:project/AboutUs.dart';
import 'package:project/donor.dart';
import 'package:project/home.dart';
import 'package:project/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:multiselect/multiselect.dart';

class Recipient extends StatefulWidget {
  const Recipient({super.key});

  @override
  State<Recipient> createState() => _DonorState();
}
class _DonorState extends State<Recipient> {

  List<String> variantsList = ['Stationary',"Uniform","Water Bottle","Books","Calculator","Back Pack","School Shoes","Lunch Box","NoteBooks","Electronic Devices", "Accessories"];
  List<String> selectedCheckBoxValue = [];

  bool value = false;

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
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: ListView(  
    padding: EdgeInsets.zero,  
    children: <Widget>[  
      DrawerHeader(  
        decoration: const BoxDecoration(  
          color: Color.fromARGB(255, 13, 176, 149),  
        ),  
        child: Text('CharityQue', style: GoogleFonts.playfairDisplay(fontSize: 35, color: Colors.white)),  
      ),  

      ListTile(  
        title: const Text('About Us'),  
        onTap: () {  
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => const AboutUs(),));
        },
      ),

      ListTile(  
        title: const Text('Donor'),  
        onTap: () {  
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => const Donor(),));
        },  
      ),  
      ListTile(  
        title: const Text('Recipient'),  
        onTap: () {  
         Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => const Recipient(),));
        },
      ),

      ListTile(  
        title: const Text('Home'),  
        onTap: () {  
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => const HomePage(),));
        },
      ),
    ],  
  ),  
),
      appBar: AppBar(
        title: const Text('Charity Que'),
        backgroundColor: const Color.fromARGB(255, 13, 176, 149),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Text('Recipient',
                  style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 19, 120, 70),
                  fontSize: 40, ) ),
                ),
              ],
            ),
        
               const SizedBox(height: 15,), 
              const Center(child:
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(height: 50, 
          child: TextField(
          decoration: InputDecoration(
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
                  const Center(child:
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(height: 50, 
          child: TextField(
          decoration: InputDecoration(
            hintText: "Contact no. :",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(15),)
            ),
            ),
              ),
        ),
        ),
              ),

              const SizedBox(height: 30,),
              Center(child:
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(height: 50, 
          child: DropDownMultiSelect(
            decoration: const InputDecoration(
              // fillColor: Theme.of(context).colorScheme.onPrimary,
              // focusColor: Theme.of(context).colorScheme.onPrimary,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.5
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    color:Colors.blue,
                    width: 1.5,
                  )),
            ),
            options: variantsList,
            selectedValues: selectedCheckBoxValue,
            onChanged: (List<String> value) {
           //   value = selectedCheckBoxValue;
            print("${selectedCheckBoxValue}");
 
            },
            whenEmpty: 'Select Items Of Need',
          ),

        ),
        ),
              ),

    
        const SizedBox(height: 30,),
              Center(
                child:
                FancyButton(
                    button_text: 'Submit',
                    button_height: 40,
                    button_width: 370,
                    button_radius: 15,
                    button_color: const Color.fromARGB(255, 29, 144, 106),
                    button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                    button_outline_width: 1.5,
                    button_text_color: Colors.white,
                    button_text_size: 22,
                    onClick: (){
                      Navigator.of(context).pushReplacement
                      (MaterialPageRoute(builder: (BuildContext context) => const AboutUs(),
                  )
                  );
                    }
                    ),
              ),
              const SizedBox(height: 10,),
          ],
          ),
      ),
    );
  }
}