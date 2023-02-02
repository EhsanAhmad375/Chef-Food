import 'dart:developer';

import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_button/theme_button.dart';
class Settings extends StatelessWidget {
  Settings({super.key});
ItemController _myitemcontroller=Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,0,10,0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Themes',
                  style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: (){
                      Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
                    },
                    child:Container(
                      height: 5*SizeConfig.heightMultiplier,
                      width: 10*SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('asset/themepark.png'))
                      ),
                    )
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Text Font Change',
                   style: TextStyle(fontSize: 20,
                   fontFamily: _myitemcontroller.style?'Raleway':'cirve',
                   
                   ),),
                   InkWell(
                    onTap: (){
                      _myitemcontroller.style=!_myitemcontroller.style;
                    },
                    child: Icon(Icons.text_fields_rounded,size: 30,))
              ],
            )
          ],
        ),
      ),
    );
  }
  bool change=false;
}