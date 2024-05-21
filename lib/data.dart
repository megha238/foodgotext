import 'package:flutter/material.dart';

import 'app_color.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {

    int selectedIndex = 0;
    List choiceItemsList = ['All','Combos','Sliders','Combos'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: choiceItemsList.length,
        
        shrinkWrap: true,
        scrollDirection: 
        Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){}, child: Text(choiceItemsList.elementAt(index))),
        );
      },),
    ),);
  }

   void onChipSelected(int index) {
    setState(() {
      selectedIndex = index;
      // filterProducts(_searchController.text);
    });
   }
   void filterProducts(String query) {
    // List<Product> originalList;
    // if (selectedIndex == 0) {
    //   originalList = productsListForAll;
    // } else if (selectedIndex == 1) {
    //   originalList = productsListForCombos;
    // } else {
    //   originalList = productsListForSliders;s
    // }
    // setState(() {
    //   filteredProductNames = originalList
    //       .where((product) => product.productName.toLowerCase().contains(query.toLowerCase()))
    //       .toList();
    // });
   }
}