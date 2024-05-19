/*
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
List productName = ['chetan','megha','abhi','sweta','love'];
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        children: [
          SearchBar(
            controller: controller,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0)),
            onTap: () {
              controller.openView();
            },
            onChanged: () {
              controller.openView();
            },
            leading: const Icon(Icons.search),
            trailing: <Widget>[
              Tooltip(
                message: 'Change brightness mode',
                child: IconButton(
                  isSelected: isDark,
                  onPressed: () {
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                  icon: const Icon(Icons.wb_sunny_outlined),
                  selectedIcon: const Icon(Icons.brightness_2_outlined),
                ),
              )
            ],
          ),

          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
            return Card(
              child: Center(child: Text("${productName[index]}")),
            );
          },
            itemCount: productName.length,

          ),

        ],
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:loginwithgoogle/productScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
List<String> productName = ['chetan', 'megha', 'abhi', 'sweta', 'love'];

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _searchController;
  late List<String> filteredProductNames;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    filteredProductNames = List.from(productName);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // void _onSearch(String value) {
  //   setState(() {
  //     filteredProductNames = productName
  //         .where((name) => name.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                boxShadow:  [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
               // spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 1),
              ),],
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.circular(15),
             // shape: BoxShape.rectangle,
                 // borderRadius: BorderRadius.(25),
                color: Colors.red,

              ),
              child: TextField(
//clipBehavior: Clip.none,

                controller: _searchController,

                decoration: InputDecoration(

                  filled: true,
                  //fillColor:  Colors.blue,
                 border: InputBorder.none,
                  fillColor: const Color(0xffffffff),
               //  border: InputBorder.none,
                // border:InputBorder.none,

                 //  (
                 //
                 //   borderRadius: BorderRadius.all(Radius.circular(25),),
                 //
                 //   borderSide: BorderSide(),
                 // ),

                  hintText: 'Search',

                 // labelText: 'Screat',
                  prefixIcon: Icon(Icons.search),


                ),
                onChanged: (value) {
                  setState(() {
                    filteredProductNames = productName
                        .where((name) => name.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                  });
                },
               // _onSearch,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
              },
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Center(child: Text("${filteredProductNames[index]}")),
                  );
                },
                itemCount: filteredProductNames.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


