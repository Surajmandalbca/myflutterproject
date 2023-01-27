import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: menu(),
  ),
);

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  final List <String> _listview =[
    'assets/home.jpg',
    'assets/login.jpg',
    'assets/menu.jpg',
    'assets/sad.jpg',
    'assets/home.jpg',
    'assets/login.jpg',
    'assets/menu.jpg',
    'assets/sad.jpg',
    'assets/sad.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: Text('Home'),
        centerTitle: true,
        leading: Icon(Icons.menu,),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(40),
               image: DecorationImage(
                 image: AssetImage('assets/sad.jpg'),
                 fit: BoxFit.fill
               ),
             ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(begin: Alignment.centerLeft,
                colors: [
                  Colors.white.withOpacity(.15),
                  Colors.black12.withOpacity(.90),
                ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,25,12,10),
                child: Column(
                  children: [
                    Text('Anime World',style: TextStyle(fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                    ),
                  SizedBox(height: 80),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 40,),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Wallpapers',style:
                    TextStyle(fontWeight:
                    FontWeight.bold,fontSize: 25,color: Colors.white),),),
                  ),
                   SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
          ),
          
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: _listview.map((item) => Card(
                 color: Colors.transparent,
                 elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ), ).toList(),
            ),
          ),
        ],
      ),

    );
  }
}
