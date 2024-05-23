// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:loginwithgoogle/ChatBloc/chat_event.dart';
// import 'package:loginwithgoogle/ChatBloc/chat_state.dart';
// import 'customer_support.dart';
//
// class ChatBloc extends Bloc<ChatEvent,ChatState>{
//   List <ChetMessage>tags = [];
//   TextEditingController textController = TextEditingController();
//   ChatBloc() : super(ChatInitialState()){
//     on((event, emit) {
//       if(event is ChatSendBtnEvent){
//
//         tags.add(ChetMessage(message: event.leftMsg,isSender: false));
//         tags.add(ChetMessage(message: event.rightMsg,isSender: true));
//         return emit(ChatAddState(chat: textController.text));
//       }
//     });
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginwithgoogle/ChatBloc/chat_event.dart';
import 'package:loginwithgoogle/ChatBloc/chat_state.dart';
import 'package:loginwithgoogle/app_string.dart';
import 'customer_support.dart';
import 'customer_support2.dart';

class ChatBloc extends Bloc<ChatEvent,ChatState>{
  List <ChetMessage>tags = [];
<<<<<<< HEAD
  //List <String>defaultList = [];
  ScrollController controller = ScrollController();
=======
    List <String>defaultList = [];
>>>>>>> d445e0dd41495c14aaeb70721b1429b7dc4c7c7a

  TextEditingController textController = TextEditingController();
  ChatBloc() : super(ChatInitialState()){
if( textController.text.isNotEmpty)
    on<ChatSendBtnEvent>((event, emit){
      emit(ChatInitialState());
      tags.add(ChetMessage(message: AppString.defaultMsg ,isSender: false));
      tags.add(ChetMessage(message: textController.text ?? '',isSender: true));
      textController.text = '';

      controller.animateTo(
        controller.position.maxScrollExtent,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
      print('list :$tags');
       emit(ChatAddState(chat: textController.text));


<<<<<<< HEAD
=======
        tags.add(ChetMessage(message: event.leftMsg ?? '',isSender: false));
        tags.add(ChetMessage(message: event.rightMsg ?? '',isSender: true));
        return emit(ChatAddState(chat: textController.text));
      }
>>>>>>> d445e0dd41495c14aaeb70721b1429b7dc4c7c7a
    });

    // on((event, emit) {
    //
    //   if(event is ChatSendBtnEvent){
    //
    //
    //     tags.add(ChetMessage(message: event.leftMsg ?? '',isSender: false));
    //     tags.add(ChetMessage(message: event.rightMsg ?? '',isSender: true));
    //     return emit(ChatAddState(chat: textController.text));
    //   }
    // });
  }
}
