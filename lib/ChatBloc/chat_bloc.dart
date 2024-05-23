import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginwithgoogle/ChatBloc/chat_event.dart';
import 'package:loginwithgoogle/ChatBloc/chat_state.dart';
import 'customer_support.dart';

class ChatBloc extends Bloc<ChatEvent,ChatState>{
  List <ChetMessage>tags = [];
  TextEditingController textController = TextEditingController();
  ChatBloc() : super(ChatInitialState()){
    on((event, emit) {
      if(event is ChatSendBtnEvent){

        tags.add(ChetMessage(message: event.leftMsg,isSender: false));
        tags.add(ChetMessage(message: event.rightMsg,isSender: true));
        return emit(ChatAddState(chat: textController.text));
      }
    });
  }
}

