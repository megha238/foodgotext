abstract class ChatState{
  ChatState();
}
class ChatInitialState extends ChatState{

}
class ChatAddState extends ChatState{
String? chat;
ChatAddState({required this.chat});

}
class chatDleteState extends ChatState{
  int? index;
  chatDleteState({required this.index});

}
