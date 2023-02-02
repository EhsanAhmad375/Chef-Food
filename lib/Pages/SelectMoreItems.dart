import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Modal/HomeModal.dart';
import 'package:chef_food/Pages/Home.dart';
import 'package:chef_food/Pages/HomePage.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
class SelectMoreItems extends StatelessWidget {
   SelectMoreItems({super.key});
  ItemController controller =Get.put(ItemController());
  // int Ahmad=eatz.value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
        title:Text(' Total amount  Rs.${controller.func()} '),
          actions: [
            InkWell(
              onTap: (){

                
                showAnimatedDialog(
  context: context,
  barrierDismissible: true,
  builder: (BuildContext context) {
    return ClassicGeneralDialogWidget(
      titleText: 'Thank you',
      contentText: '''No of Items ${controller.SelectMoreItemsList.length}
Total amount ${controller.func()}

                    Take Enjoy

      ''',
      onPositiveClick: () {
        controller.Records_data.add(HomeModal(
          RecordsQuantity: controller.no_of_items(),
          RecordsTotalamount: controller.func(),
          Recordsname: controller.recordname,
          Recordspic: controller.recordpic
        ));
        controller.SelectMoreItemsList.clear();
        Get.off(Homepage());

      },
      onNegativeClick: () {
        Get.back();
      },
    );
  },
  animationType: DialogTransitionType.fadeRotate,
  curve: Curves.slowMiddle,
  duration: Duration(milliseconds: 1700),
);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10,right: 15),
                child: Image.asset('asset/money.png',
                
                height: 3*SizeConfig.heightMultiplier,
                width: 8*SizeConfig.widthMultiplier,
                color: Colors.white,
                ),
                
              ),
            )
          ],
        ),
     body: ListView(
        children: [
             Container(
                      height: 87*SizeConfig.heightMultiplier,
                      // height: MediaQuery.of(context).size.height,
               child:   Expanded(
                     child: GetX<ItemController>(
                       
                       builder: (getcontroller) {
                         return ListView.builder(
                              itemCount: controller.SelectMoreItemsList.length,
                              itemBuilder: (context , index){
                                 getcontroller.Selected_TotalPrice=getcontroller.SelectMoreItemsList[index].quantity * getcontroller.SelectMoreItemsList[index].Smallprice;
                            // controller.get_totalpricelist.add(getcontroller.Selected_TotalPrice);
                                getcontroller.quant=getcontroller.SelectMoreItemsList[index].quantity;
                                getcontroller.newprice=getcontroller.SelectMoreItemsList[index].Smallprice;
                              return 
                              
                                 
                                    Obx(()=>
                                       ListTile(
                                        
                                        leading: CircleAvatar(backgroundImage:AssetImage(getcontroller.SelectMoreItemsList[index].image) ),
                                        title: Text('${getcontroller.SelectMoreItemsList[index].name}'),
                                        subtitle: Text('${getcontroller.SelectMoreItemsList[index].quantity} x ${getcontroller.SelectMoreItemsList[index].Smallprice} = ${getcontroller.SelectMoreItemsList[index].Largprice} '),
                                        trailing: InkWell(
                                          onTap: (){
                                            Get.to(Homepage());
                                              getcontroller.SelectMoreItemsList.removeAt(index).value;
                                            
                                            getcontroller.SelectMoreItemsList[index].update();
                                         
                                            
                                        
                                          },
                                          child: Icon(Icons.delete))
                                      
                                      ),
                                    );
                                      }
                                    );
                       }
                     ),
             ),
            //  Text("data")
            
             ),        
           
             
           
             ],
      ),
    );
  }

  
}

  
  
