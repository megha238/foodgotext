
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginwithgoogle/ChatBloc/chat_bloc.dart';
import 'package:loginwithgoogle/ChatBloc/chat_state.dart';
import '../app_color.dart';
import '../app_string.dart';
import 'chat_event.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({super.key});

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {
  ChatBloc bloc = ChatBloc();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: SvgPicture.asset('assets/images/arrow-left.svg'),),
          actions:  [
            Padding(
                padding: EdgeInsets.only(right: 15.sp),
                child: IconButton(onPressed: () {
                }, icon: SvgPicture.asset('assets/images/right_icon.svg'))
            )

          ],
        ),
        body: BlocBuilder<ChatBloc,ChatState>(
          bloc: bloc,
          builder: (context, state) {
            return Padding(
              padding:  EdgeInsets.all(25.sp),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: AppColor.white,
                      child: (bloc.tags.isEmpty)? const Center(child: Text('No message'))
                          : ListView.builder(
                        itemCount: bloc.tags.length,
                        itemBuilder: (context, index) {
                          return  !bloc.tags[index].isSender ?
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  child: SvgPicture.asset('assets/images/userIcon.svg'),
                                  backgroundColor: Colors.yellow
                                  //  AppColor.circleAvtarBg
                                  ,),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10.sp),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7.sp),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.sp),
                                        color: AppColor.lightGrey
                                    ),
                                    child: Text(bloc.tags[index].message),
                                  ),
                                ),
                              ],

                            ),
                            onLongPress: () {
                              showDialog(
                                barrierColor: Colors.transparent,
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  surfaceTintColor: Colors.white,
                                  shadowColor: Colors.grey,
                                  elevation: 10,
                                  title: Text("Confirm Alert"),
                                  content: Text('Are you sure you want to delete this message?'),
                                  actions: [
                                    GestureDetector(
                                      child: Container(
                                        width: 50.sp,
                                        height: 50.sp,
                                        decoration: BoxDecoration(
                                            color: AppColor.red,
                                            borderRadius: BorderRadius.all(Radius.circular(15.sp))
                                        ),
                                        child:  Center(child: Text("Ok",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold),)),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                        bloc.add(ChatDeleteEvent(index: index));

                                        // setState(() {
                                         // bloc.tags.removeAt(index);
                                       // });

                                      },
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        width: 50.sp,
                                        height: 50.sp,
                                        decoration: BoxDecoration(
                                            color: AppColor.red,
                                            borderRadius: BorderRadius.all(Radius.circular(15.sp))
                                        ),
                                        child:  Center(child: Text("Cancel",style: TextStyle(color:AppColor.white,fontWeight: FontWeight.bold),)),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ):

                          Padding(
                            padding:  EdgeInsets.only(left: 50.sp),
                            child: InkWell(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 5.sp, horizontal: 10.sp),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.sp, vertical: 10.sp),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20.sp),
                                          color: AppColor.red
                                      ),
                                      child: Text(bloc.tags[index].message,),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage('assets/images/userImg.png')),
                                        borderRadius: BorderRadius.circular(30.sp),
                                        border: Border.all(width: 2.sp,color: AppColor.red)
                                    ),
                                    height: 38.sp,
                                    width: 38.sp,
                                    margin: EdgeInsets.only(top: 5.sp),
                                  ),
                                ],
                              ),
                              onLongPress: () {
                                showDialog(
                                  barrierColor: Colors.transparent,
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Colors.white,
                                    elevation: 10,
                                    title: Text("Delete msg?"),
                                    actions: [
                                      GestureDetector(
                                        child: Container(
                                          width: 50.sp,
                                          height: 50.sp,
                                          decoration: BoxDecoration(
                                              color: AppColor.red,
                                              borderRadius: BorderRadius.all(Radius.circular(15.sp))
                                          ),
                                          child:  Center(child: Text("Ok",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          bloc.add(ChatDeleteEvent(index: index,));
                                        //  setState(() {
                                           // bloc.tags.removeAt(index);
                                       //   });
                                        },
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Cancel'),
                                        style: ButtonStyle(
                                            foregroundColor:
                                            MaterialStatePropertyAll(Colors.red)),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        controller: bloc.controller,
                      ),
                    ),),
                  Stack(
                    children: [
                      Container(
                        height: 45.sp,
                        alignment: Alignment.centerLeft,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5.sp), //color of shadow
                              blurRadius: 7,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15.sp),
                          //color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: TextField(
                            maxLines:10,
                            controller: bloc.textController,
                            decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              fillColor: AppColor.white,
                              hintText: 'Type here...',
                              prefixIcon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 50.sp,
                          height: 50.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.sp))
                          ),
                          child: IconButton.filledTonal(
                            onPressed:  () => bloc.add(ChatSendBtnEvent()),
                            //{

                            //  setState(() {
                            //     bloc.tags.add(ChetMessage(message: AppString.defaultMsg,isSender: false));
                            //     bloc.tags.add(ChetMessage(message: bloc.textController.text,isSender: true));
                            //     bloc.textController.text = '';
                             // });

                          //  },
                            icon:  SvgPicture.asset('assets/images/paper-plane.svg'),
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                              backgroundColor: MaterialStatePropertyAll(AppColor.red),
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ],
              ),
            );
            // bottomNavigationBar: TextFormField(),

          },)
    );
  }
}

class ChetMessage{
  bool isSender = false;
  String message = "";
  ChetMessage({this.isSender = false, required this.message});
}