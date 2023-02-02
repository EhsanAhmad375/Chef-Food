import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:chef_food/Controller/ItemController.dart';
import 'package:chef_food/Controller/cartController.dart';
import 'package:chef_food/Modal/HomeModal.dart';
import 'package:chef_food/Pages/SelectMoreItems.dart';
import 'package:chef_food/Pages/SelectedItem.dart';
//import 'package:chef_food/Pages/Pizza.dart';

import 'package:chef_food/Pages/config_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final TextEditingController Searchbarcontroller = TextEditingController();

  ItemController itemController = Get.put(ItemController());

  final CartController cartCotroller = Get.put(CartController());
  HomeModal? passdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(''),InkWell(
                    highlightColor: Colors.transparent,
                    onTap: (){
                      Get.to(SelectMoreItems());
                    },
                    child: Icon(Icons.shopping_cart_checkout,size: 30,color: Colors.white,))],),
              ),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '''What meal would you like to order today''',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: AnimSearchBar(
                    width: MediaQuery.of(context).size.width,
                    textController: Searchbarcontroller,
                    onSuffixTap: () {
                      Obx() => Searchbarcontroller.clear();
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'HOT FOOD',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 150,
                child: GetX<ItemController>(builder: (controller) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        // index=itemController.myIndex.value;

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            child: Column(
                              children: [
                                Text(
                                  "${controller.items[index].name}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Obx(
                                  () => InkWell(
                                    onTap: () {
                                      controller.myColor.value = index;
                                      controller.myIndex.value = index;
                                      print(
                                          'my index value${controller.myIndex}');
                                    },
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundColor:
                                          controller.myColor.value == index
                                              ? Colors.white
                                              : Colors.grey,
                                      child: CircleAvatar(
                                        radius: 47,
                                        backgroundImage: AssetImage(
                                            '${controller.items[index].image!}'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }),
              ),
              Container(
                child: GetBuilder<ItemController>(
                    init: Get.put(ItemController()),
                    builder: (controller) {
                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                        ),
                        itemCount:
                            //  8,
                            controller.myIndex.value == 0? controller.PizaList.length
                            : controller.myIndex.value == 1? controller.burgerList.length
                            : controller.myIndex.value == 2? controller.shawarmaList.length
                            : controller.myIndex.value == 3? controller.iceCreamList.length
                            : controller.myIndex.value == 4? controller.hotDrinksList.length
                            : controller.myIndex.value == 5? controller.meatList.length
                            : controller.coolList.length,
                        itemBuilder: (context, index) {
                          // print('value is ${controller.myIndex}');

                          return InkWell(
                            onTap: () {
                              controller.myimageIndex.value = index;
                              Get.to(
                                SelectedDetail(data: HomeModal(),),
                                arguments:
                                {
                                  "data":HomeModal(),
                                  
                                  'image':controller.myIndex.value == 0? controller.PizaList[index].mypizza
                                    : controller.myIndex.value == 1? controller.burgerList[index].myburger
                                    : controller.myIndex.value == 2? controller.shawarmaList[index].myshawarma
                                    : controller.myIndex.value == 3? controller.iceCreamList[index].myIceCream
                                    : controller.myIndex.value == 4? controller.hotDrinksList[index].myHotDrink
                                    : controller.myIndex.value == 5? controller.meatList[index].myMeat
                                    : controller.coolList[index].myCoolDrinks,
                                    'name':controller.myIndex.value == 0? controller.PizaList[index].myProductname
                                    : controller.myIndex.value == 1? controller.burgerList[index].myProductname
                                    : controller.myIndex.value == 2? controller.shawarmaList[index].myProductname
                                    : controller.myIndex.value == 3? controller.iceCreamList[index].myProductname
                                    : controller.myIndex.value == 4? controller.hotDrinksList[index].myProductname
                                    : controller.myIndex.value == 5? controller.meatList[index].myProductname
                                    : controller.coolList[index].myProductname,
                                    'price':controller.myIndex.value == 0? controller.PizaList[index].Smallprice
                                    : controller.myIndex.value == 1? controller.burgerList[index].Smallprice
                                    : controller.myIndex.value == 2? controller.shawarmaList[index].Smallprice
                                    : controller.myIndex.value == 3? controller.iceCreamList[index].Smallprice
                                    : controller.myIndex.value == 4? controller.hotDrinksList[index].Smallprice
                                    : controller.myIndex.value == 5? controller.meatList[index].Smallprice
                                    : controller.coolList[index].Smallprice,
                                    'newicons':controller.myIndex.value == 0? controller.PizaList[index].favIcon
                                    : controller.myIndex.value == 1? controller.burgerList[index].favIcon
                                    : controller.myIndex.value == 2? controller.shawarmaList[index].favIcon
                                    : controller.myIndex.value == 3? controller.iceCreamList[index].favIcon
                                    : controller.myIndex.value == 4? controller.hotDrinksList[index].favIcon
                                    : controller.myIndex.value == 5? controller.meatList[index].favIcon
                                    : controller.coolList[index].favIcon,
                                }
                              );
                            },
                            // highlightColor: Colors.amberAccent,
                            child: Obx(
                              () => Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              controller.myIndex.value == 0? controller.PizaList[index].mypizza!
                                               : controller.myIndex.value == 1? controller.burgerList[index].myburger!
                                               : controller.myIndex.value ==2? controller.shawarmaList[index].myshawarma!
                                               : controller.myIndex.value ==3? controller.iceCreamList[ index].myIceCream!
                                               : controller.myIndex.value == 4  ? controller.hotDrinksList[index].myHotDrink!
                                               : controller.myIndex.value ==5? controller.meatList[index].myMeat!
                                               : controller.coolList[index].myCoolDrinks!
                                              //  controller.shawarmaList[index].myshawarma!

                                              ,
                                            ),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)),
                                    margin: EdgeInsets.all(3.5),

                                    //                            child:Padding(
                                    //                        padding: const EdgeInsets.only(left: 20,top: 10),
                                    //                        child:
                                    //                         Text('Propertires',style:
                                    //                        TextStyle(color: Colors.white,
                                    //                        fontSize: 20,fontWeight: FontWeight.w900
                                    //                        ),),
                                    //  ) ,
                                  ),
                                  // InkWell(
                                  //   onTap: (){
                                  //       // current=index;
                                  //     itemController.toogle();
                                  //   },
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(8.0),
                                  //     child: Icon(Icons.favorite,
                                  //      color: itemController.isSelected.value?Colors.red:Colors.grey,
                                  //     size: 30,
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ),
              
            ],
          ),
        ));
  }
 int current=-1;
 List<bool> fav=[false,false,false,false,false,false,false,false,];
}
