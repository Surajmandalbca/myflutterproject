import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/home.dart';
import 'package:myapp/sing_up.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: Text('Login[Anime]',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          centerTitle: true,
        leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_sharp),
        ),
        ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(

                child: Image.network('https://media1.giphy.com/media/JRlqKEzTDKci5JPcaL/giphy.gif?cid=ecf05e47ewml86ucnty9op6nfcd2xp3d59n0jcuh8bk8k95m&rid=giphy.gif&ct=g',),

            ),
        SizedBox(height: 30,),

        Column(
          children: [
            Text('Login',style:
            TextStyle(color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 30),),
            SizedBox(height: 10,),
            Text('Login to your account',style:TextStyle(color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 15),),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30),
             child: Column(
                        children: [
                          makeinput(lable: "Email"),
                          makeinput(lable: "password",obscureText: true),
                        ],
             ),
           ),
            SizedBox(height: 20,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>menu()));
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("i don't have account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>singup()));
                }, child:Text('Sing up',style:
                TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 16),) ),

              ],
            ),
        ],
      ),
    ),
    );
  }
  Widget makeinput({lable,obscureText=false}){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lable,style: TextStyle(fontWeight: FontWeight.bold,),),
          SizedBox(height: 10,),
          TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding:EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            ),
          ),
        ],
      );
  }
}
