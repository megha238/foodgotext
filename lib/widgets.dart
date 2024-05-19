
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginwithgoogle/app_color.dart';

abstract class AllWidgets {

  static Widget customText(
      {required String data,
        double? fontSize,
        String? fontFamily,
        FontWeight? fontWeight,
        TextAlign? textAlign,Color? color}) {
    return Text(
      data,
      textAlign: textAlign,
      maxLines: 1,
      overflow: TextOverflow.fade,
      style: TextStyle(
        fontSize: fontSize ?? 10,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily ?? 'Roboto',
        color: color ?? AppColor.black
      ),
    );
  }

  static Widget buildGridview({required List img,required List name}){
    return  GridView.builder(
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
                      image: DecorationImage(image: AssetImage('${img[index]}')),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),topRight: Radius.circular(20), topLeft:  Radius.circular(20))
                  ),
                  width: double.infinity,height: 60
              ),
              Padding(
                padding:  EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    AllWidgets.customText(data:name[index],fontSize: 10,fontWeight: FontWeight.w700 ,color: AppColor.white,textAlign: TextAlign.center),
                    // Text('${sideOption[index]}',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700 ,fontSize: 10,color: AppColor.white),textAlign: TextAlign.center,),
                    CircleAvatar(backgroundColor: AppColor.red,minRadius: 8,child: Icon(Icons.add,color: Colors.white,),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),

            ],
          ),

        );

      },
      itemCount: name.length,

    );
  }


}