import 'package:project/AboutUs.dart';
import 'package:project/reicipient.dart';
import 'package:project/donor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List pages = [Donor(), Recipient(), const AboutUs(),];
  int activepage = 0;
  @override
  Widget build(BuildContext context) {
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
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => AboutUs(),));
        },
      ),

      ListTile(  
        title: const Text('Donor'),  
        onTap: () {  
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => Donor(),));
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
          Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => HomePage(),));
        },
      ),
    ],  
  ),  
),
      appBar: AppBar(
        title: const Text('Charity Que'),
        backgroundColor: Color.fromARGB(255, 18, 181, 138),
      ),
      body:
     SingleChildScrollView(
       child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('0.PNG', height: 160, width: 160,),
       
       Column
       (children: 
       [
        Center(
          child: Text("Welcome", style: GoogleFonts.wixMadeforText(
            fontSize: 40,
          )
          ),
        ),
        const Divider(
          color: Colors.black,
          indent: 60,
          endIndent: 60,),
          SizedBox(height: 10),
       ],
       ),
            Row(
              children: [
                Padding(                                                                                                                   
                 padding: const EdgeInsets.only(left: 10,),
                 child: Center(child: Text("Top Available Donations", style: GoogleFonts.roboto(fontSize: 15,))),),
               Padding(
                padding: const EdgeInsets.only(left: 45,),
                child: Center(child: Text("Top Required Donations", style: GoogleFonts.roboto(fontSize: 15,))),
                          ),
             ],
           ),

           Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 10,),
                 child: Container(
                    height: 100,
                    width: 165,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                     color: const Color.fromARGB(255, 165, 203, 234),),
                     child:
                   Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                   child: Center(child: Text("Donation:    Water Bottle", textAlign: TextAlign.center, style: GoogleFonts.dmSans(fontSize: 16,),)),
                   ),
                                 ),
               ),
            
               Padding(
                 padding: const EdgeInsets.only(left: 45,),
                 child: Container(
                    height: 100,
                    width: 165,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                     color: const Color.fromARGB(255, 165, 203, 234),),
                     child:
                   Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                   child: Center(child: Text("Donation:    Lunch Box", textAlign: TextAlign.center, style: GoogleFonts.dmSans(fontSize: 16,),)),
                   ),
                                 ),
               ),
             ],
           ),

           const SizedBox(height: 10),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                 padding: const EdgeInsets.only(left: 10,),
                 child: Container(
                    height: 100,
                    width: 165,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                     color: const Color.fromARGB(255, 165, 203, 234),),
                     child:
                   Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                   child: Center(child: Text("Required:    School shoes", textAlign: TextAlign.center, style: GoogleFonts.dmSans(fontSize: 16,),)),
                   ),
                 )
                ),

                Padding(
                 padding: const EdgeInsets.only(left: 45,),
                 child: Container(
                    height: 100,
                    width: 165,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                     color: const Color.fromARGB(255, 165, 203, 234),),
                     child:
                   Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                   child: Center(child: Text("Required:        Books", textAlign: TextAlign.center, style: GoogleFonts.dmSans(fontSize: 16,),)),
                   ),
                 )
                )
             ],
           ),

          ],
       ),
     ),
     );
  }
}