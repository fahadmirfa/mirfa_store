import 'package:flutter/material.dart';
import 'package:mirfa_store/consts/consts.dart';
import 'package:mirfa_store/controller/home_controller.dart';
import 'package:mirfa_store/views/account/account.dart';
import 'package:mirfa_store/views/cart/cart.dart';
import 'package:mirfa_store/views/categories/categories.dart';
import 'package:mirfa_store/views/home_screen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var navbarItems = [
      BottomNavigationBarItem(icon: Image.asset(icHome , width: 26,),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories , width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart , width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile , width: 26,),label: account),
    ];


    var navBody = [
      HomeScreen(),
      CategoriesScreen(),
      CartScreen(),
      AccountScreen(),

    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
currentIndex: controller.currentNavIndex.value,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),

          items: navbarItems,
        onTap: (value){
  controller.currentNavIndex.value = value;
        },
        ),
      ),
    );
  }
}
