import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'Onboardingscreen.dart';
class loadlogo extends StatefulWidget {
  const loadlogo({super.key});

  @override
  State<loadlogo> createState() => _loadlogoState();
}

class _loadlogoState extends State<loadlogo> with TickerProviderStateMixin{
  late AnimationController _controller;
  bool isStarted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Center(child: Text('Shape Up Buddy',style: TextStyle(fontSize: 40,fontStyle:FontStyle.italic,fontWeight: FontWeight.w700,color: Color(0xff9D76C1)),)),
        ),
        SizedBox(height: 40,),
        Expanded(
          child: Center(
            child: Lottie.asset('lib/animations/fitness.json',),
            
          )),
          Spacer(),
          GestureDetector(
            onTap: () async{
              setState(() {
                isStarted = true;
              });
              Get.to(Onboardingscreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height:60,
              width:190,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xff9D76C1)),
                child: Center(child: Text('Lets Become Fit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),
            ),
          ),
          SizedBox(height: 40,)

      ],
     ),
      
    );
  }
}