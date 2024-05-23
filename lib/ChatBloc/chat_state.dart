abstract class ChatState{
  ChatState();
}
class ChatInitialState extends ChatState{

}
class ChatAddState extends ChatState{
String? chat;
ChatAddState({required this.chat});

}