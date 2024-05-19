/*
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}
double _currentSliderValue = 1;

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Spicy'),
          Container(
            color: Color.fromARGB(255, 255, 115, 0),
            child: Theme(
              data: Theme.of(context).copyWith(
                sliderTheme: SliderThemeData(
                  thumbShape: SquareSliderComponentShape(),
                 // trackShape: MyRoundedRectSliderTrackShape(),
                ),
              ),
              child: Slider(
                onChanged: (value) => setState(() => _currentSliderValue = value),
                value: _currentSliderValue,
                min: 0,
                max: 100,
                activeColor: Colors.black,
                inactiveColor: const Color.fromARGB(255, 230, 209, 138),
              ),
            ),
          ),



          SliderTheme(
            data:
            SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.green,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
            child: Slider(
              value: _currentSliderValue,
              onChanged: (val) {
                _currentSliderValue = val;
                setState(() {});
              },
            ),
          ),

          Slider(
            activeColor: Colors.red,
           // divisions: 10,
            min: 1,
            max: 100,
            value: _currentSliderValue,
           // label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Mild',style: TextStyle(color: Colors.green),),
              Text('Hot',style: TextStyle(color: Colors.red),),
            ],),
          )
        ],
      ),
    );
  }
}
class SquareSliderComponentShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(20, 30);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    canvas.drawShadow(
        Path()
          ..addRRect(RRect.fromRectAndRadius(
            Rect.fromCenter(center: center, width: 24, height: 30),
            const Radius.circular(4),
          )),
        Colors.black,
        5,
        false);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(center: center, width: 20, height: 30),
        const Radius.circular(4),
      ),
      Paint()..color = Colors.amber,
    );
  }
}*/



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginwithgoogle/HomeScreenBloc/home_screen_bloc.dart';
import 'package:loginwithgoogle/ProductBloc/product_bloc.dart';
import 'package:loginwithgoogle/ProductBloc/product_event.dart';
import 'package:loginwithgoogle/app_color.dart';
import 'package:loginwithgoogle/app_string.dart';
import 'package:loginwithgoogle/product.dart';
import 'package:loginwithgoogle/widgets.dart';

import 'ProductBloc/product_state.dart';

class ProductScreen extends StatefulWidget {
  final double price;
  //final List getList;
   ProductScreen({super.key, required this.price,});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}
List toppingNames = ['Tomato','Onions','Pickles','Bacons','Tomato'];
List sideOption = ['Fries','Coleslaw','Salad','Onion','Fries'];
List toppingImg = ['assets/images/tomoto.png','assets/images/onion.png','assets/images/pickles.png','assets/images/Bacons.png','assets/images/tomoto.png'];
List sideOptionImg = ['assets/images/firies.png','assets/images/Coleslaw.png','assets/images/salad.png','assets/images/OnionFreid.png','assets/images/firies.png'];


class _ProductScreenState extends State<ProductScreen> {
  ProductBloc bloc = ProductBloc();
  double _currentValue = 0;
  int value = 1;
  double finalPrice= 0.0;
  @override
  void initState() {
    finalPrice = widget.price;
    setState(() {
    });
  //  print(widget.price);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Image(image: AssetImage('assets/images/Vector.png'),)),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Image(image: AssetImage('assets/images/search.png'),),
        )],
      ),
      body: BlocBuilder(
        bloc: bloc,
        builder: (BuildContext context, state) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2.9,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                           margin: EdgeInsets.only( right: 50,),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                           //   color: Colors.green,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/pngwingImg.png')
                              )
                          ),
                        ),
                      ),
                      // me bol rhi hu call pr connect ho jao .........
                      Container(
                          padding: EdgeInsets.only(right: 15),
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: AppString.customize,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Roboto'),
                                  children:  <TextSpan>[
                                    TextSpan(text: AppString.detail,style: TextStyle(fontWeight: FontWeight.normal)),
                                  //  TextSpan(text: ' world!'),
                                  ],
                                ),
                              ),
                            //  Text.rich(TextSpan(text: AppString.customize,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Roboto'))),
                             // Text('Customize Your Burger to Your Tastes. Ultimate Experience',style: TextStyle(fontFamily: 'Roboto',),maxLines: 5,softWrap: true,),
                              SizedBox(height: 20,),
                              AllWidgets.customText(data: AppString.spicy,fontWeight: FontWeight.w700 ,fontSize: 14),

                            //  Text('Spicy',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700 ,fontSize: 14)),
                              SizedBox( height: 15,),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    trackHeight: 7,
                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0,),
                                    overlayShape: SliderComponentShape.noOverlay
                                ),
                                child:
                                Container(
                                  width: double.infinity,
                                  child: Slider(
                                    activeColor: AppColor.red,
                                    value: _currentValue,
                                    min: 0,
                                    max: 100,
                                    onChanged: (double newValue) {
                                      setState(() {
                                        _currentValue = newValue;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox( height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AllWidgets.customText(data: AppString.mild,color: AppColor.green,fontFamily: 'Roboto',fontWeight: FontWeight.w800 ,fontSize: 12),
                                  AllWidgets.customText(data: AppString.hot,color: AppColor.red,fontFamily: 'Roboto',fontWeight: FontWeight.w800 ,fontSize: 12),
                                 // Text('Mild',style: TextStyle(color: AppColor.green,fontFamily: 'Roboto',fontWeight: FontWeight.w800 ,fontSize: 12),),
                                //  Text('Hot',style: TextStyle(color: AppColor.red,fontFamily: 'Roboto',fontWeight: FontWeight.w800 ,fontSize: 12),),
                                ],
                              ),
                              SizedBox(height: 20,),
                              AllWidgets.customText(data: AppString.portion,fontSize: 14,fontWeight: FontWeight.w500 ),
                             // Text('Portion',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500 ,fontSize: 14)),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5,right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: IconButton.filledTonal(
                                        onPressed: () {
                                          bloc.add(ProductSelectDecreamentEvent(totalDecPri: widget.price));
                                          // setState(() {
                                          //   if(value > 1){
                                          //     value = value - 1;
                                          //     totalPrice = (totalPrice! - widget.price);
                                          //     print(" total price $totalPrice");
                                          //     print('$value');
                                          //   }
                                          // });

                                          //minus.png
                                        },
                                        icon: const Icon(Icons.remove,color: Colors.white,),
                                        style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                                          backgroundColor: MaterialStatePropertyAll(AppColor.red),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.yellow.shade100,offset: Offset(0, 3),
                                                blurRadius: 5,
                                                spreadRadius: 2
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                    ),
                                   AllWidgets.customText(data: bloc.value.toString(),fontSize: 18,fontWeight: FontWeight.w500 ),

                                   // Text('${bloc.value}',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500 ,fontSize: 18)),
                                    Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.yellow.shade100,offset: Offset(0, 3),
                                                blurRadius: 5,
                                                spreadRadius: 2
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: IconButton.filledTonal(

                                        onPressed: () {
                                         // print(widget.price);
                                          bloc.add(ProductSelectIncreamentEvent(totalIncPri: widget.price));
                                          // setState(() {
                                          //   value = value + 1;
                                          //   totalPrice = (totalPrice! + widget.price);
                                          //   print(" total price $totalPrice");
                                          //   print('$value');
                                          //   print('click');
                                          // });
                                        }, icon: Icon(Icons.add,color:AppColor.white,),
                                        style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                                          backgroundColor: MaterialStatePropertyAll(AppColor.red),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child:  AllWidgets.customText(data:AppString.toppings,fontSize: 18,fontWeight: FontWeight.w700 ),

                //  child: Text('Toppings',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700 ,fontSize: 18),),
                ),
                Container(
                  height: 140,
                  child: AllWidgets.buildGridview(img: toppingImg, name: toppingNames)
                 /* GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1 ),
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 10),
                        elevation: 8,
                        color: AppColor.black,
                        child: Column(
                          children: [
                            Container(

                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('${toppingImg[index]}')),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),topRight: Radius.circular(20), topLeft:  Radius.circular(20))
                                ),
                                width: double.infinity,height: 60
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 15),
                              child: Row(

                                children: [
                                  AllWidgets.customText(data:toppingNames[index],fontSize: 10,fontWeight: FontWeight.w700 ,color: AppColor.white,textAlign: TextAlign.center),
                                //  Text('${toppingNames[index]}',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700 ,fontSize: 10,color: AppColor.white),textAlign: TextAlign.center,),
                                  CircleAvatar(backgroundColor: AppColor.red,minRadius: 12,child: Icon(Icons.add,color: AppColor.white,),)
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              ),
                            ),

                          ],
                        ),

                      );

                    },
                    itemCount: toppingNames.length,

                  ),*/
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child:  AllWidgets.customText(data:AppString.sideOption,fontSize: 18,fontWeight: FontWeight.w700 ),
                  //   Text('Side options',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700 ,fontSize: 18)),
                ),
                Container(
                  height: 140,
                  child: AllWidgets.buildGridview(img: sideOptionImg, name: sideOption)

                 /* GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1 ),
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 10),
                        elevation: 8,
                        color: AppColor.black,
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('${sideOptionImg[index]}')),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),topRight: Radius.circular(20), topLeft:  Radius.circular(20))
                                ),
                                width: double.infinity,height: 60
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                   AllWidgets.customText(data:sideOption[index],fontSize: 10,fontWeight: FontWeight.w700 ),
                                 // Text('${sideOption[index]}',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700 ,fontSize: 10,color: AppColor.white),textAlign: TextAlign.center,),
                                  CircleAvatar(backgroundColor: AppColor.red,minRadius: 12,child: Icon(Icons.add,color: Colors.white,),)
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              ),
                            ),

                          ],
                        ),

                      );

                    },
                    itemCount: toppingNames.length,

                  ),*/
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only( left: 15),
                        child:  AllWidgets.customText(data: AppString.total,fontSize: 18,fontWeight: FontWeight.w800 ),
                         // child: Text('Total',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w800 ,fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.only( left: 15),
                          child: Row(
                            children: [
                              AllWidgets.customText(data: AppString.dSign, color: AppColor.red,fontSize: 20,fontWeight: FontWeight.w900 ),
                              AllWidgets.customText(
                                  data:
                                (  bloc.totalPrice == 0.0)?
                                 finalPrice.toString() : bloc.totalPrice.toStringAsFixed(2),
                                  fontSize: 36,fontWeight: FontWeight.bold ),
                              // Text('\$',style: TextStyle(color: AppColor.red,fontSize: 20,fontWeight: FontWeight.w900)),
                             // Text('${totalPrice?.toStringAsFixed(2)} ',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold ,fontSize: 36),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      width: MediaQuery.of(context).size.width/1.8,
                      height: 65,
                      child: TextButton(
                        onPressed: () {
                          print('click');
                          //minus.png
                        },
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStatePropertyAll(AppColor.red),
                        ), child: AllWidgets.customText(data: AppString.order,fontWeight: FontWeight.w800,fontSize: 18,color: AppColor.white)
                      //Text('ORDER NOW',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w800 ,fontSize: 18,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ],),
          );
        },


      ),
    );
  }
}
