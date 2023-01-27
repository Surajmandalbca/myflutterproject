import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/home.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/sing_up.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  )
  );
}
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(

              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(vertical: 31,),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                          SizedBox(height: 10),
                          Text("suraj anime login page welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey[700]),),
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/home.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Column(
                            children: [
                              MaterialButton(
                                minWidth: double.infinity,
                                  height: 60,
                                  onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>login()));
                                  },
                                shape: RoundedRectangleBorder(

                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Text('Login',style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 18,
                                  ),

                                ),
                                color: Colors.grey,
                                elevation: 0,

                              ),
                              SizedBox(height: 20,),
                               Container(
                                child: MaterialButton(
                                   minWidth: double.infinity,
                                   height: 60,
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>singup()));
                                  },
                                  shape: RoundedRectangleBorder(

                                    side: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                  child: Text('Singup',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 18,
                                  ),

                                  ),
                                    color: Colors.grey,
                                  elevation: 0,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                child: Image.network('https://www.wilsoninfo.com/welcome/welcomeclipart15.gif',height: 100,fit: BoxFit.fill,),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),

          ),
        ),
      ),
    );
  }
}
