import 'HomePage.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
            SizedBox(height: 9*SizeConfig.heightMultiplier,),
            Text('Enter the code sent  to your email adress',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            ),
            SizedBox(height: 2*SizeConfig.heightMultiplier,),
            // Text('We\'ll send you an OTP to verify.'),
            SizedBox(height: 3*SizeConfig.heightMultiplier,),
            Center(
              child: OTPTextField(
                width: MediaQuery.of(context).size.width,
                length: 5,
                style: TextStyle(fontFamily: 'Cursive'),
              ),
            ),
          
            // TextField(
            //   decoration: InputDecoration(
            //   fillColor: Colors.grey,  
            //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            //     hintText: 'Email Adress',
            //     labelText: "Email",
            //   ),
            // ),
            SizedBox(height: SizeConfig.heightMultiplier,),
            InkWell(
              highlightColor: Colors.black,
              onTap: (){},
              child: Text('Use number istead',
              style: TextStyle(color: Colors.amberAccent.shade700,
              fontSize: 17
              ),
              ),
            ),
            SizedBox(height: 45*SizeConfig.heightMultiplier
            ,),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 20),
              child: Text('By proceeding, you agree to our user agreement  and privacy policy '),
            ),
        
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: (Radius.circular(30)),topRight: (Radius.circular(30)))),
              onPressed: (){
              Get.offAll(Homepage());
              },
              height: 8*SizeConfig.heightMultiplier,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Text('CONTINUE',
              style: TextStyle(color: Colors.white,
              fontSize: 19,fontWeight: FontWeight.bold
              ),
              ),
            )
          ],),
        ),
      )),
    );
  }
}