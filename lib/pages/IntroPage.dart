import 'package:ecomerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset("lib/images/logo.png"
              ,height: 240,),
            ),
          
          
            const SizedBox(height: 48),
            const Text('Just Do It!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
          
            ),
            ),
            const SizedBox(height: 24),
            const Text('Brand new sneakers and Custom Kicks with Premium  Quality',
            style: TextStyle(
              color:Colors.grey,
              fontSize: 20,
          
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            GestureDetector(
              onTap: ()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()
              )),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child:  Text('Shop Now',style: TextStyle(color: Colors.white
                  ,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  ),
                  ),
                ),
              ),
            )
          
          ],),
        ),
      )
    );
  }
}