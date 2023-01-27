import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/login_page.dart';

class singup extends StatelessWidget {
  const singup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: Text('SingUp[Anime]',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
           child: Container(
             child: Column(
              children: [
                Container(

                   child: Image.network('https://media.tenor.com/CwY1o_Pi99kAAAAC/aba-anime-battle-arena.gif',
                     height: 130,width:399,fit: BoxFit.fitWidth,),

                ),
                SizedBox(height: 20,),

                Column(
                  children: [
                    Text('Sing up',style:
                    TextStyle(color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),),
                    SizedBox(height: 10,),
                    Text('Please enter your currect details',style:TextStyle(color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      makeinput(lable: "Full Name"),
                      makeinput(lable: "Email"),
                      makeinput(lable: "password",obscureText: true),
                      makeinput(lable: "confirm password",obscureText: true),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(

                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Text('Sing up',style: TextStyle(
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
                    Text("Alredy have a account ?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 12),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>login()));
                    }, child:Text('Login',style:
                    TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 16),) ),


                  ],
                ),

              ],
        ),
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
