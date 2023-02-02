import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NameList extends StatelessWidget {
   NameList({super.key, this.modal});
   final modal;
  ItemController _controller =Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('NAmeList'),
      ),
      body: Container(
        height: 80*SizeConfig.heightMultiplier,
        child: Expanded(child: ListView.builder(
          itemCount: _controller.Records_data.length,
          itemBuilder: (context,index){
            return ListTile(
              // leading: CircleAvatar(backgroundImage: 
              // AssetImage('${_controller.Records_data[index].Recordspic}')),
              title: Text('${_controller.Records_data[index].Recordsname}'),
            );
          })),
      ),
    );
  }
}