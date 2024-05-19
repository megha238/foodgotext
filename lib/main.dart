import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginwithgoogle/HomeScreenBloc/home_screen_bloc.dart';
import 'package:loginwithgoogle/ProductBloc/product_bloc.dart';
import 'package:loginwithgoogle/navigationbar.dart';
import 'package:loginwithgoogle/productScreen.dart';
import 'login_screen.dart';
import 'navigationbarsecondscreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeScreenBloc()),
        BlocProvider(create: (context) => ProductBloc()),

    ],
      child: MaterialApp(
        // initialRoute: '/',
        // routes: {
        //   // When navigating to the "/" route, build the FirstScreen widget.
        //  // '/': (context) => const Pr(),
        //   // When navigating to the "/second" route, build the SecondScreen widget.
        //  // '/second': (context) =>  ProductScreen(price: price),
        // },
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  BottomNavigationBarScreen(),
      ),
    );
  }
}
