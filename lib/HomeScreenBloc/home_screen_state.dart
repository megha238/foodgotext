abstract class HomeScreenState{
  HomeScreenState();
}
class HomeScreenInitialState extends HomeScreenState{

}

class HomeScreenNavigateToScreenState extends HomeScreenState{
   final double price ;
   HomeScreenNavigateToScreenState({required this.price});
}