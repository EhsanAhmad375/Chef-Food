import 'package:chef_food/Pages/Records.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
class HomeModal {
  final String? name;
  final String? image;
  final int? Smallprice;
  final double? Medprice;
  final int? Largprice;
  final String? mypizza;
  final String? myburger;
  final String? myshawarma;
  final String? myIceCream;
  final String? myHotDrink;
  final String? myMeat;
  final String? myCoolDrinks;
  final String? myProductname;
  final String? variable;
  final IconData? favIcon;
  final int? quantity; 
  final String? Recordsname;
  final String?Recordspic;
  final int? RecordsQuantity;
  final int? RecordsTotalamount;
  HomeModal({
    this.name,
    this.image,
    this.Smallprice,
    this.Medprice,
    this.Largprice,
    this.mypizza,
    this.myburger,
    this.myshawarma,
    this.myIceCream,
    this.myHotDrink,
    this.myMeat,
    this.myCoolDrinks,
    this.myProductname,
    this.variable,
    this.favIcon,
    this.quantity,
    this.Recordsname,
    this.RecordsQuantity,
    this.RecordsTotalamount,
    this.Recordspic
  });

}