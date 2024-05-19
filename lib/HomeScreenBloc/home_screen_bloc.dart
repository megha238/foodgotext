import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginwithgoogle/HomeScreenBloc/home_screen_event.dart';
import 'package:loginwithgoogle/HomeScreenBloc/home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  double price = 0.0;
  HomeScreenBloc() : super(HomeScreenInitialState()){
    on((event, emit) {
      if(event is HomeScreenNavigateEvent){
       return emit(HomeScreenNavigateToScreenState(price: event.pri));
      }
    });
  }

}