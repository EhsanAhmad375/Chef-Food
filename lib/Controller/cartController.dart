import 'package:chef_food/Modal/HomeModal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartController extends GetxController{
  var cartItems=<HomeModal>[].obs;
  int get count=>cartItems.length;
  double get totalprice=>cartItems.fold(0, (previousValue, element) => previousValue+element.Largprice!);
  addTOCart(HomeModal homeModal){
    cartItems.add(homeModal);
  }
}