abstract class ChatEvent{
  ChatEvent();
}
class ChatSendBtnEvent extends ChatEvent{
String? rightMsg;
String? leftMsg;

ChatSendBtnEvent({required this.rightMsg, required this.leftMsg});
}
