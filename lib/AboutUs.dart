import 'package:project/reicipient.dart';
import 'package:project/donor.dart';
import 'package:project/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
        backgroundColor: Color.fromARGB(255, 13, 176, 149),
      ),
      body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Text('About Us',
                  style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 19, 120, 70),
                  fontSize: 40, ) ),
                ),
              ],
            ),
              Center(
                child: 
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                  child: 
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 13, 176, 149),),
                    child:
                  Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: Text("Charity Que is a non-profit community based mobile hub which allows donor to donate directly to the recipient or charitable organization through supply/need chain by direct communication ", textAlign: TextAlign.center, style: GoogleFonts.dmSans(fontSize: 25, color: Colors.white),),
                                ),
                                ),
                ),
              ),
          ],
      ),
    );
  }
}