import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Pages/NameList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Records extends StatelessWidget {
 Records({super.key});
  ItemController _controller =Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Records'),
      ),
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          
          ),
          itemCount: _controller.Records_data.length  ,
         itemBuilder: (context,index){
          return InkWell(
            splashColor: Colors.white ,
            onTap: (){
              Get.to(NameList());
            },
            child:Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(30)),
              child:ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50,top: 20),
                    child: Text('${_controller.Records_data[index].RecordsQuantity}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 10),
                    child: Text('${_controller.Records_data[index].RecordsTotalamount}'),
                  )
                ],
              ) ,) 
          );
         }),

    );
  }
}