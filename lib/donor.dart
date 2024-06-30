import 'package:project/AboutUs.dart';
import 'package:project/reicipient.dart';
import 'package:project/donate_eco.dart';
import 'package:project/Donate_Fees.dart';
import 'package:project/donate_org.dart';
import 'package:project/donate_sup.dart';
import 'package:project/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';

class Donor extends StatefulWidget {
  const Donor({super.key});

  @override
  State<Donor> createState() => _DonorState();
}
class _DonorState extends State<Donor> {

  bool value = true;

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

      String dropdownvalue = 'Donor';

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
         Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => Recipient(),));
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
                  child: Text('Donor',
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

        const SizedBox(height: 15,),
            const Center(child:
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child:
        SizedBox(
          child: TextField(
            maxLines: 5,
          decoration: InputDecoration(
            hintText: "Item discription:",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(15),)
            ),
            ),
              ),
        ),
        ),
              ),

              const SizedBox(height: 20,),
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: FancyButton(
                          button_text: 'Donate School Supply',
                          button_height: 40,
                          button_width: 185,
                          button_radius: 15,
                          button_color: const Color.fromARGB(255, 29, 144, 106),
                          button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                          button_outline_width: 1.5,
                          button_text_color: Colors.white,
                          button_text_size: 15,
                          onClick: (){
                            Navigator.of(context).pushReplacement
                            (MaterialPageRoute(builder: (BuildContext context) => const Donateschoolsups(),
                        )
                        );
                          }
                          ),
                    ),
                  ),

                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 3),
                        child: Center(
                          child: FancyButton(
                                button_text: 'Donate To Oragnization',
                                button_height: 40,
                                button_width: 185,
                                button_radius: 15,
                                button_color: const Color.fromARGB(255, 29, 144, 106),
                                button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                                button_outline_width: 1.5,
                                button_text_color: Colors.white,
                                button_text_size: 15,
                                onClick: (){
                                  Navigator.of(context).pushReplacement
                                  (MaterialPageRoute(builder: (BuildContext context) => const Oragnization(),
                              )
                              );
                                }
                                ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10,),
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: FancyButton(
                          button_text: 'Donate Eco-Stationaries',
                          button_height: 40,
                          button_width: 185,
                          button_radius: 15,
                          button_color: const Color.fromARGB(255, 29, 144, 106),
                          button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                          button_outline_width: 1.5,
                          button_text_color: Colors.white,
                          button_text_size: 15,
                          onClick: (){
                            Navigator.of(context).pushReplacement
                            (MaterialPageRoute(builder: (BuildContext context) => Eco(),
                        )
                        );
                          }
                          ),
                    ),
                  ),

                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 3),
                        child: Center(
                          child: FancyButton(
                                button_text: 'Donate School Fees',
                                button_height: 40,
                                button_width: 185,
                                button_radius: 15,
                                button_color: const Color.fromARGB(255, 29, 144, 106),
                                button_outline_color: const Color.fromARGB(255, 29, 144, 106),
                                button_outline_width: 1.5,
                                button_text_color: Colors.white,
                                button_text_size: 15,
                                onClick: (){
                                  Navigator.of(context).pushReplacement
                                  (MaterialPageRoute(builder: (BuildContext context) => const Fees(),
                              )
                              );
                                }
                                ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20,),
              Center(
                child:
                FancyButton(
                    button_text: 'Upload Image',
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
              const SizedBox(height: 20,),
               Center(
                child:
                FancyButton(
                    button_text: 'Donate',
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
          ]
          ),
        )
      );
  }
}