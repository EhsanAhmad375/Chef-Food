import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Modal/HomeModal.dart';
import 'package:chef_food/Pages/Home.dart';
import 'package:chef_food/Pages/HomePage.dart';
import 'package:chef_food/Pages/SelectMoreItems.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';


class SelectedDetail extends StatefulWidget {
   SelectedDetail({super.key,required this.data});
   HomeModal data;
   
  @override
  State<SelectedDetail> createState() => _SelectedDetailState();
  
}

class _SelectedDetailState extends State<SelectedDetail> {
  ItemController itemController=Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: ListView(
        children: [
          
            GetX<ItemController>(
              builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    margin: EdgeInsets.only(left: 7,right: 7),
                    height: 35*SizeConfig.heightMultiplier,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(
                                Get.arguments['image'],
                                
                                
                            ),fit: BoxFit.cover),
                            color: Colors.amber
                          ),
                          child: Text(''' list view ${controller.myIndex} 
Grid view  ${controller.myimageIndex}
                          ''',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 0.1,
                            // fontWeight: FontWeight.bold
                            ),
                          
                          ),
                          
                          ),
                );
              }
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Name       ' +Get.arguments['name'].toString(),
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text('Price         ' +Get.arguments['price'].toString(),
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text('Description',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Your choice is so spacific ,you can buy it more the one. Enjoy the time.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            if(itemController.myCount>1){
                              itemController.myCount--;
                             }
                            else{
                              Get.defaultDialog(
                                title: 'Warning',
                                middleText: 'Please Go Forward and Enjoy ✔'
                              );
                            }
                          },
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.remove)),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,),
                          child: Obx(()=> Text('${itemController.myCount}')),
                        ),

                        InkWell(
                          onTap: (){
                            itemController.myCount++;
                              itemController.TotalPrice=itemController.TotalPrice+Get.arguments['price'];
                           
                          },
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add)),
                        ),
                        

                        
                        ],
                    ),
                  ),
                ),
                                       GetX<ItemController>(
                         builder: (controller) {
                           return InkWell(
                            // enableFeedback: true,
                            // autofocus: true,
                            splashColor: Colors.teal,
                            
                               onTap: (){
                                Get.snackbar(
                                  'Faveroite','$newname add in your faveroite list');                  
                               itemController.toogle();
                              //  Get.arguments['image'] && Get.arguments['name']
                                  // Get.arguments['image'].add(controller.favoriteList);
                                  itemController.favoriteList.add(HomeModal(
                                    image: pic,
                                    name: newname,
                                    Smallprice: amounts,
                                    // favIcon: newicon
                                  ));
                                      },
                                   child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                     child:
                                     Icon(   Icons.favorite 
                                      ,size: 44,
                                      color: itemController.isSelected.value?Colors.red:Colors.red.shade400,
                                    //  )
                                    // ,
                                      // Icon(Icons.favorite,
                                      // , color: itemController.isSelected.value?Colors.red.shade300:Colors.grey,
                                        //  size: 45,
                                             ),
                                              ),
                                            );
                         }
                       )

              ],
            ),
            SizedBox(height: 7*SizeConfig.heightMultiplier,),
            Row(
              children: [
                SizedBox(width: 30*SizeConfig.widthMultiplier,),
                Expanded(
                  child: MaterialButton(
                    elevation: 15,
                    minWidth: 1*SizeConfig.widthMultiplier,
                    height: 5*SizeConfig.heightMultiplier,
                    color: Colors.amber,
                    onPressed: ()=>
                    
                    Get.bottomSheet(
                    
                      ListView(
                        
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20,20,20,0),
                            height: 20*SizeConfig.heightMultiplier,
                            width: 5*SizeConfig.widthMultiplier,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(Get.arguments['image'],
                              ),
                              fit: BoxFit.cover
                              )
                            ),
                           
                          ),
                          Container(
                            // decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(20)
                            // ),
                            color: Colors.teal.shade100,
                              margin: EdgeInsets.fromLTRB(20,20,20,20),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Text('Name                       ' +Get.arguments['name'].toString(),
                                 style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                 ),
                                 Text('Total Items               ${itemController.myCount  }  x ${Get.arguments['price']}',
                                 style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                 ),
                                Text('Total amount           ${itemController.myCount * amounts  }',
                                
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Row(
                                  children: [
                                    MaterialButton(onPressed: (){
                                      Get.back();
                                    },child: Text('Concel'),),
                                    SizedBox(width: 2*SizeConfig.widthMultiplier,),
                                     MaterialButton(onPressed: (){
                                      itemController.recordname=newname;
                                      itemController.recordpic=pic;
                                      

                                     itemController.SelectMoreItemsList.add(HomeModal(
                                    image: pic,
                                    name: newname,
                                    Smallprice: amounts,
                                    quantity:itemController.myCount.value,
                                    Largprice:itemController.myCount.value * amounts ,
                                    // favIcon: newicon
                                  ));
                                      Get.to(Homepage());
                                      itemController.myCount=1.obs;
                                    },child: Text('Select More'),),
                                    SizedBox(width: 2*SizeConfig.widthMultiplier,),
                                   
                                    MaterialButton(onPressed: (){
                                      
                                     
                                     
                                     Get.to(Homepage());
                                      
                                    },child: Text('Confirm')),
                                  ],
                                )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  child: Text('Confirm Order'),
                  ),
                ),
                SizedBox(width: 30*SizeConfig.widthMultiplier,),
              ],
            ),

       ],
       
       
      ),
    
    );

  }
  
  int amounts=Get.arguments['price'];
  String pic=Get.arguments['image'];
  String newname=Get.arguments['name'];
  IconData newicon=Get.arguments['newicons'];
  
}
