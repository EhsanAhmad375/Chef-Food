import 'package:chef_food/Modal/HomeModal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ItemController extends GetxController{
RxList<HomeModal> items=<HomeModal>[].obs;
RxList<HomeModal> PizaList=<HomeModal>[].obs;
RxList<HomeModal> burgerList=<HomeModal>[].obs;
RxList<HomeModal> shawarmaList=<HomeModal>[].obs;
RxList<HomeModal> iceCreamList=<HomeModal>[].obs;
RxList<HomeModal> hotDrinksList=<HomeModal>[].obs;
RxList<HomeModal> meatList=<HomeModal>[].obs;
RxList<HomeModal> coolList=<HomeModal>[].obs; 
RxInt myColor=0.obs;
RxInt myIndex=0.obs;
RxInt myimageIndex=0.obs;
RxInt myCount=1.obs;
RxInt TotalPrice=0.obs;
RxBool isSelected = true.obs;
RxList favoriteList=[].obs;
RxInt deleteIndex=0.obs;
RxList SelectMoreItemsList=[].obs;
String? recordname;
RxInt sarapesa=0.obs;
int Selected_TotalPrice=0;
RxBool changetheme=false.obs;
List get_totalpricelist=<int>[];
List Records_data=[];
List sample=[2,3,5,3,24,3,3];
  int quant=0;
  int newprice=0;
  int updateamount=0;
  bool style=false;
 String? recordpic;
 int? recordcount;
  
int func(){
  updateamount=quant*newprice;
int sum=0;
get_totalpricelist.add(updateamount);
//    sum=get_totalpricelist.fold(0,(sum, element) => element + sum );
for(int i=0; i<SelectMoreItemsList.length; i++){
  sum=SelectMoreItemsList[i].Largprice+sum;
}
  return sum;
}
int no_of_items(){
  updateamount=quant*newprice;
int sum=0;
get_totalpricelist.add(updateamount);
for(int i=0; i<SelectMoreItemsList.length; i++){
  sum=SelectMoreItemsList[i].quantity+sum;
}
  return sum;
}
bool toogle() {
   return isSelected.value = !isSelected.value; 
  }
     void remove(int index){
      
    return favoriteList.removeAt(index);
  }
  void onInit(){
    super.onInit();
    fethHomemodal();
    fethHomemodaPizza();
    fetchHomeModalBurger();
    fecthHomemodalShawarma();
    fetchHomeModalIceCream();
    fetchHomeModalHotDrinks();
    fetchHomeModalMeat();
    fetchHomeModalcoolDrinks();
    toogle();
    // remove();
   update();
   
  }
  void fethHomemodal()async{
    await Future.delayed(Duration(seconds: 1));
    var ItemsResult=[
      // HomeModal(image:'Ehsan' ),
      HomeModal(name: 'Pizza', image: 'asset/Pizza.jpg'),
      HomeModal(name: 'Burger', image:  'asset/burger.jpg'),
      HomeModal(name: 'Shawarma',image:  'asset/Shwarma.jpg'),
      HomeModal(name: 'IceCream', image: 'asset/IceCream.jpg'),
      HomeModal(name: 'Hot Drink', image: 'asset/hotDrink.jpg'),
      HomeModal(name: 'Meat',  image: 'asset/gosht.jpg', ),
      HomeModal(name: 'Cool Drinks',  image: 'asset/CoolDrinks.jpg'),
    ];
  items.value=ItemsResult;
  }
  void fethHomemodaPizza(){
  var pizzaResult=[
    HomeModal(mypizza:'asset/Pizza.jpg',myProductname:  'Pizza No.1',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza25.jpg',myProductname:'Pizza No.2',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza3.jpg',myProductname: 'Pizza No.3',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza4.jpg',myProductname: 'Pizza No.4',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza5.jpg',myProductname: 'Pizza No.5',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza6.jpg',myProductname: 'Pizza No.6',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza7.jpg',myProductname: 'Pizza No.7',Smallprice: 100,favIcon: Icons.favorite),
    HomeModal(mypizza:'asset/Pizza8.jpg',myProductname: 'Pizza No.8',Smallprice: 100,favIcon: Icons.favorite),
  ];

  PizaList.value=pizzaResult;
     
}

  void fetchHomeModalBurger(){
    var BurgerResult=[
    HomeModal(myburger:'asset/burger.jpg', myProductname: 'burger No.1',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger1.jpg',myProductname: 'burger No.2',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger2.jpg', myProductname: 'burger No.3',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger3.jpg', myProductname: 'burger No.4',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger4.jpg', myProductname: 'burger No.5',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger5.jpg', myProductname: 'burger No.6',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger6.jpg', myProductname: 'burger No.7',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger7.jpg', myProductname: 'burger No.8',Smallprice: 500,favIcon: Icons.favorite),
    HomeModal(myburger:'asset/burger8.jpg',myProductname: 'burger No.9',Smallprice: 500,favIcon: Icons.favorite),
    ];
  burgerList.value=BurgerResult;
  }
  void fecthHomemodalShawarma()async{
        await Future.delayed(Duration(seconds: 1));

  var ShawarmaResult=[
    HomeModal(myshawarma:'asset/shawarma1.jpg',myProductname: 'Shawarmaa No.1',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/shawarma2.jpg',myProductname: 'Shawarmaa No.2',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/shawarma3.jpg',myProductname: 'Shawarmaa No.3',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/Shwarma.jpg',  myProductname: 'Shawarmaa No.4',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/shawarma5.jpg',myProductname: 'Shawarmaa No.5',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/shawarma6.jpg',myProductname: 'Shawarmaa No.6',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/shawarma7.jpg',myProductname: 'Shawarmaa No.7',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myshawarma:'asset/shawarma8.jpg',myProductname: 'Shawarmaa No.8',Smallprice: 400,favIcon: Icons.favorite),

  ];

  shawarmaList.value=ShawarmaResult;
     
}
  void fetchHomeModalIceCream(){
    var IceCreamResult=[
    HomeModal(myIceCream:'asset/IceCream.jpg', myProductname: 'Ice Cream No.1',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream1.jpg',myProductname: 'Ice Cream No.2',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream2.jpg',myProductname: 'Ice Cream No.3',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream3.jpg',myProductname: 'Ice Cream No.4',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream4.jpg',myProductname: 'Ice Cream No.5',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream5.jpg',myProductname: 'Ice Cream No.6',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream6.jpg',myProductname: 'Ice Cream No.7',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream7.jpg',myProductname: 'Ice Cream No.8',Smallprice: 300,favIcon: Icons.favorite),
    HomeModal(myIceCream:'asset/icrCream8.jpg',myProductname: 'Ice Cream No.9',Smallprice: 300,favIcon: Icons.favorite),
    
    ];
    iceCreamList.value=IceCreamResult;
  }

 void fetchHomeModalHotDrinks(){
  var HotDrinkResult=[
     HomeModal(myHotDrink:'asset/hotDrink1.jpg',myProductname: 'Hot Drinks No.1',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink2.jpg',myProductname: 'Hot Drinks No.2',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink3.jpg',myProductname: 'Hot Drinks No.3',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink4.jpg',myProductname: 'Hot Drinks No.4',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink5.jpg',myProductname: 'Hot Drinks No.5',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink6.jpg',myProductname: 'Hot Drinks No.6',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink7.jpg',myProductname: 'Hot Drinks No.7',Smallprice: 500,favIcon: Icons.favorite),
     HomeModal(myHotDrink:'asset/hotDrink8.jpg',myProductname: 'Hot Drinks No.8',Smallprice: 500,favIcon: Icons.favorite),

  ];
  hotDrinksList.value=HotDrinkResult;

 }


  void fetchHomeModalMeat(){
    var MeatResult=[

    HomeModal(myMeat:'asset/karahi1.jpg', myProductname: 'Karahi No.1',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/karahi2.jpg', myProductname: 'Karahi No.2',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/karahi3.jpg', myProductname: 'Karahi No.3',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/karahi4.jpg', myProductname: 'Karahi No.4',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/karahi5.jpg', myProductname: 'Karahi No.5',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/karahi6.jpg', myProductname: 'Karahi No.6',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/karahi7.jpg', myProductname: 'Karahi No.7',Smallprice: 400,favIcon: Icons.favorite),
    HomeModal(myMeat:'asset/myMeat.jpg', myProductname: 'Karahi No.8',Smallprice: 400,favIcon: Icons.favorite),

    ];
    meatList.value=MeatResult;
  }

  void fetchHomeModalcoolDrinks(){
    var coolDrinksResult=[
       HomeModal(myCoolDrinks:'asset/CoolDrinks.jpg',myProductname: 'Cool Drinks No.1',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks1.jpg',myProductname: 'Cool Drinks No.2',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks2.jpg',myProductname: 'Cool Drinks No.3',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks3.jpg',myProductname: 'Cool Drinks No.4',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks45.jpg',myProductname: 'Cool Drinks No.5',Smallprice:300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks5.jpg',myProductname: 'Cool Drinks No.6',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks6.jpg',myProductname: 'Cool Drinks No.7',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks8.jpg',myProductname: 'Cool Drinks No.8',Smallprice: 300,favIcon: Icons.favorite),
       HomeModal(myCoolDrinks:'asset/CoolDrinks9.jpg',myProductname: 'Cool Drinks No.9',Smallprice: 300,favIcon: Icons.favorite),

    ];
    coolList.value=coolDrinksResult;
  } 

  

}