import 'package:carousel_slider/carousel_slider.dart';
import 'Login.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
class Next extends StatelessWidget {
   Next({super.key});
final controller=PageController(viewportFraction: 0.8,keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
            
            CarouselSlider(items:[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 90*SizeConfig.widthMultiplier,
                  // child: Image.asset('asset/delivary.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('asset/delivary.png',),fit: BoxFit.cover),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 90*SizeConfig.widthMultiplier,
                  // child: Image.asset('asset/delivary.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('asset/delivary2.png',),fit: BoxFit.cover),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 90*SizeConfig.widthMultiplier,
                  // child: Image.asset('asset/delivary.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('asset/delivary3.jpg',),fit: BoxFit.cover),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 90*SizeConfig.widthMultiplier,
                  // child: Image.asset('asset/delivary.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('asset/delivary4.jpg',),fit: BoxFit.cover),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 90*SizeConfig.widthMultiplier,
                  // child: Image.asset('asset/delivary.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('asset/delivary5.png',),fit: BoxFit.cover),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 90*SizeConfig.widthMultiplier,
                  // child: Image.asset('asset/delivary.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('asset/delivary6.png',),fit: BoxFit.cover),


                  ),
                ),
              ),
            ]
            
            ,
             options: CarouselOptions(autoPlay: true,
             enlargeCenterPage: true,
             viewportFraction: 1
             )),

             SizedBox(height: 5*SizeConfig.heightMultiplier,),
             Text('Order food from your faverouit restaurant',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
             ),
             ),
             Text('All your best  restaurant at your finger chips.')
          ,SizedBox(
            height: 40*SizeConfig.heightMultiplier,
          ),
          InkWell(
            onTap: (){
            Get.to(Login());
            },
            child: Container(
              height: 8*SizeConfig.heightMultiplier,
              width: 28*SizeConfig.widthMultiplier,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(90),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                
                )
              ),
              child: Icon(Icons.play_arrow_outlined,
              size: 45,
              ),
            ),
          )
          ],
          
              ),
        )),
          );
  }
}