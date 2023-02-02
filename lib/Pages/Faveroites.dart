import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Faveroites extends StatelessWidget {
   Faveroites({super.key});
final ItemController controller=Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Faveroites',),
      ),
      body: ListView(
        children: [
          
             Container(
                      height: 80*SizeConfig.heightMultiplier,
              
               child:   Expanded(
                     child: GetX<ItemController>(
                       
                       builder: (mycontroller) {
                         return ListView.builder(
                              itemCount: controller.favoriteList.length,
                              itemBuilder: (context , index){
                              return 
                                 
                                    Obx(()=>
                                       ListTile(
                                        
                                        leading: CircleAvatar(backgroundImage:AssetImage(mycontroller.favoriteList[index].image) ),
                                        title: Text('${mycontroller.favoriteList[index].name}'),
                                        subtitle: Text('Rs.${mycontroller.favoriteList[index].Smallprice}'),
                                        trailing: InkWell(
                                        onTap: (){
                                          
                                          mycontroller.favoriteList.removeAt(index).value;
                                          mycontroller.favoriteList[index].update();
                                        },
                                          child: Icon(Icons.delete_forever),
                                        ),
                                      ),
                                    );
                                      }
                                    );
                       }
                     ),
             ),
            //  Text("data")
             )
        ],
      ),
    );
  }

 }