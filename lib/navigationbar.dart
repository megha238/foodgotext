import 'package:flutter/material.dart';
import 'package:loginwithgoogle/commentpage.dart';
import 'package:loginwithgoogle/heartscreen.dart';
import 'package:loginwithgoogle/homescreen.dart';
import 'package:loginwithgoogle/login_screen.dart';
import 'package:loginwithgoogle/userpage.dart';


/*
class BottomNavigationbarforItems extends StatefulWidget {
  @override
  State<BottomNavigationbarforItems> createState() => _BottomNavigationbarforItemsState();
}
int selectedIndex = 0;
List screensList = [LoginScreen(),HeartScreen(),HomeScreen(),HeartScreen()];
class _BottomNavigationbarforItemsState extends State<BottomNavigationbarforItems> {
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.red,
        shape: CircleBorder(),//Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
        },
        child: Icon(Icons.add,color: Colors.white), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color:Colors.redAccent,
        height: 80,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child:TabBarView(children: [
          IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {

          },),
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {
           // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ,));
          },),
          IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {
           // Navigator.push(context, MaterialPageRoute(builder: (context) => HeartScreen() ,));
          },),
          IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {

          //  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ,));
          },),
        ],
         // controller: TabController(length: , vsync: vsync),
        ),
       // Row( //children inside bottom appbar
       //    mainAxisSize: MainAxisSize.max,
       //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //    children: <Widget>[
       //      IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {
       //        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen() ,));
       //      },),
       //      IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {
       //        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ,));
       //      },),
       //      IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {
       //        Navigator.push(context, MaterialPageRoute(builder: (context) => HeartScreen() ,));
       //      },),
       //      IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {
       //        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ,));
       //      },),
        //  ],
        ),
     // ),
    );

//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       extendBody: true,
//       body: screensList[selectedIndex],
//       bottomNavigationBar: Container(
//         height: 80,
//         decoration: BoxDecoration(
//           color: Color(0xFF091522).withOpacity(0.5),
//           borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
//         ),
//         child: BottomNavigationBar(
//           backgroundColor: Colors.transparent,
//           showUnselectedLabels: true,
//           showSelectedLabels: true,
//           useLegacyColorScheme: true,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_filled),
//              // activeIcon: SvgPicture.asset('assets/image/homeIcon.svg',color:  Color(0xFF11DCE8),),
//               label: 'Home',
//
//             ),
//             BottomNavigationBarItem(
//               //icon: Icon(Icons.heart),
//               icon: Icon(Icons.supervised_user_circle),
// //              // icon: Image.asset('assets/image/hearticojn.png',),
//               label: 'Favourites',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.comment),
//             //  activeIcon: SvgPicture.asset('assets/image/more.svg',color:  Color(0xFF11DCE8) ,),
//               //  icon: Image.asset('assets/image/moreicon.png',),
//               label: 'More',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.heart_broken),
//               //  activeIcon: SvgPicture.asset('assets/image/more.svg',color:  Color(0xFF11DCE8) ,),
//               //  icon: Image.asset('assets/image/moreicon.png',),
//               label: 'More',
//             ),
//           ],
//           currentIndex: selectedIndex,
//           onTap: _onItemTapped,
//           // onTap: (value) {
//           //   return setState(() {
//           //     selectedIndex = value;
//           //   });
//           // },
//           type: BottomNavigationBarType.fixed,
//           //enableFeedback: true,
//           selectedIconTheme: const IconThemeData( color: Color(0xFF11DCE8) ),
//           selectedItemColor: Colors.white,
//           unselectedIconTheme: const IconThemeData( color: Colors.white),
//           unselectedItemColor: Color(0xFF8D8E99),
//         ),
//       ),
//     );
  }
}*/
/*
class MyHomePage extends StatefulWidget {
  const  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
return Scaffold(
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.red,
    shape: CircleBorder(),
    onPressed: () {},
    child: const Icon(Icons.add),
  ),
  bottomNavigationBar: Container(
    height: 90,
    child: BottomAppBar(
      color: Colors.red,
     // padding: EdgeInsets.all(20),
      height: 80,
      shape:  CircularNotchedRectangle(),
      notchMargin: 5.0,
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,

        //selectedItemColor: Colors.white,
       // unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: const [

          BottomNavigationBarItem(

            icon: Icon(Icons.home_outlined,color: Colors.white),

            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.white),
            label: '',
          ),
        ],
      ),
    ),
  ),
  body: PageView(
    controller: pageController,
    children: const <Widget>[
      Center(
        child: LoginScreen(),
      ),
      Center(
        child: HomeScreen(),
      ),
      Center(
        child: HeartScreen(),
      ),
      Center(
        child: LoginScreen(),
      ),
    ],
  ),

);
*/
/*  Scaffold(
    appBar: AppBar(
      title: Text('Bottom Navigation Bar'),
      centerTitle: true,
    ),
    body: PageView(
      controller: pageController,
      children: <Widget>[
        Center(child: LoginScreen()),
        Center(child: HomeScreen()),
        Center(child: HeartScreen()),
        Center(child: HomeScreen()),
      ],
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
    bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(), // Use CircularNotchedRectangle for circular notch
      notchMargin: 5.0,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              pageController.jumpToPage(index);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    ),
  );*//*


    // Scaffold(
    //   appBar: AppBar(
    //     title: Text('Bottom Navigation Bar'),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     children: [
    //       // Your other widgets
    //       Expanded(
    //         child: PageView(
    //           controller: pageController,
    //           children: <Widget>[
    //             Center(child: LoginScreen()),
    //             Center(child: HomeScreen()),
    //             Center(child: HeartScreen()),
    //             Center(child: HomeScreen()),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {},
    //     child: Icon(Icons.add),
    //   ),
    //   bottomNavigationBar: BottomAppBar(
    //     shape: CircularNotchedRectangle(),
    //     notchMargin: 5.0,
    //     clipBehavior: Clip.antiAlias,
    //     child: SizedBox(
    //       height: kBottomNavigationBarHeight,
    //       child: BottomNavigationBar(
    //         type: BottomNavigationBarType.shifting,
    //         backgroundColor: Colors.blue,
    //         currentIndex: _selectedIndex,
    //         selectedItemColor: Colors.white,
    //         unselectedItemColor: Colors.black,
    //         onTap: (index) {
    //           setState(() {
    //             _selectedIndex = index;
    //             pageController.jumpToPage(index);
    //           });
    //         },
    //         items: [
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.home_outlined),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.search),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.favorite_border_outlined),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.account_circle_outlined),
    //             label: '',
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Your other widgets
          Expanded(
            child: PageView(
              controller: pageController,
              children: <Widget>[
                Center(child: LoginScreen()),
                Center(child: HomeScreen()),
                Center(child: HeartScreen()),
                Center(child: HomeScreen()),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.blue,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                pageController.jumpToPage(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );

    */
/*return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true,
      ),
      extendBody: true,
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          Center(
            child: LoginScreen(),
          ),
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: HeartScreen(),
          ),
          Center(
            child: HomeScreen(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      *//*

    */
/* bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child:

          BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.blue,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                pageController.jumpToPage(index);
              });
            },
            items: const [

              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: '',
              ),
            ],
          ),
        ),
      ),*//*
*/
/*
    );*//*

  }
}*/
// class Navigation2 extends StatefulWidget {
//   const Navigation2({super.key});
//
//   @override
//   State<Navigation2> createState() => _Navigation2State();
// }
//
// class _Navigation2State extends State<Navigation2> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Container(
//         margin: EdgeInsets.only(bottom: 10),
//
//         // decoration: BoxDecoration(
//         //     boxShadow: [BoxShadow( color: Colors.black38,offset: Offset(0, 2),blurRadius: 3,)],
//         // borderRadius: BorderRadius.circular(20)),
//         child: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.add),
//           backgroundColor: Colors.blue,
//           elevation: 10,
//           shape:CircleBorder() ,
//
//
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(color: Colors.red,
// notchMargin: 6,
//         shape: CircularNotchedRectangle(),
//         shadowColor: Colors.green,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                   Icon(Icons.home),
//                     Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),)
//                 ],),
//                 onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
//                 },
//               ),
//             ),
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                   Icon(Icons.email),
//                   Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
//                 ],),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => CommentPage(),));
//                 },
//               ),
//             ),
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                   Icon(Icons.settings),
//                   Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))
//                 ],),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(),));
//                 },
//               ),
//             ),
//             Expanded(
//               child: InkWell(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                   Icon(Icons.heart_broken_outlined),
//                   Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))
//                 ],),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => HeartScreen(),));
//                 },
//               ),
//             ),
//
//
//           ],
//         ),
//       )
//     );
//   }
// }
class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final PageController pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      pageController.jumpToPage(index);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      extendBody: false,
      extendBodyBehindAppBar: false,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            isExtended: false,
            elevation: 10,
            backgroundColor: Color(0xffEF2A39),
            shape: const CircleBorder(),
            onPressed: () {},
            child: const Icon(Icons.add, color: Colors.white, weight: 100),
          ),
        ),
      ),
    bottomNavigationBar: BottomAppBar(color: Colors.red,
notchMargin: 6,
        shape: CircularNotchedRectangle(),
        shadowColor: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: InkWell(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.home),
                    selectedIndex == 0?  Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),) :Text(''),
                ],),
                onTap: () {
                  onItemTapped(0);
            //  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.email),
                    selectedIndex == 1?  Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),) :Text(''),
                ],),
                onTap: () {
                  onItemTapped(1);

                //  Navigator.push(context, MaterialPageRoute(builder: (context) => CommentPage(),));
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.settings),
                    selectedIndex == 2?  Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),) :Text(''),
                ],),
                onTap: () {
                  onItemTapped(2);

                 // Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(),));
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.heart_broken_outlined),
                    selectedIndex == 3?  Text('.',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),) :Text(''),
                ],),
                onTap: () {
                  onItemTapped(3);

                  //Navigator.push(context, MaterialPageRoute(builder: (context) => HeartScreen(),));
                },
              ),
            ),]
    ),
    ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const <Widget>[
          Center(child: HomeScreen()),
          Center(child: UserPage()),
          Center(child: CommentPage()),
          Center(child: HeartScreen()),
        ],
      ),
    );
  }
}
