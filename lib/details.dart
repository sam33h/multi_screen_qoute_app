import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_screen_qoute_app/model.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final Quote detail=ModalRoute.of(context)!.settings.arguments as Quote;
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 450,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.white, Colors.blueAccent]),
          ),
          child: Column(children: [
            Text("${detail.quote}",style: GoogleFonts.jimNightshade(fontWeight: FontWeight.bold,fontSize: 40,),),
            Text("${detail.author}",style: GoogleFonts.pacifico(fontSize: 15,fontWeight: FontWeight.bold),)

          ],),
        ),
      ),
    );
  }
}
