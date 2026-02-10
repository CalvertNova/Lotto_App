import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
 
  const HomePage({super.key,
  
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        leadingWidth: 120,
        leading: Padding(padding: EdgeInsetsGeometry.all(8),
        child: Image.asset("assets/digilo_logo.png",fit: BoxFit.contain,),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(211, 248, 226, 216),
              foregroundColor: Colors.black,
              elevation: 3,
              shape: StadiumBorder(),
              shadowColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16,
              vertical: 8,),
            ),
            child: Text("Deposite",
            style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,fontFamily: "cerapro"
            ) ,
            ),
            ),
               SizedBox(width: 7,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.2
                )
              ),
              child: Text("GHS 0.00",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              ),
            ),
            IconButton(onPressed: () {}, 
            icon: ImageIcon(AssetImage("assets/notifications.png"),size: 28,))
          ],
        ),
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 254, 248),
      //to be SDUI 
      body:Center(
        child: Text("Native Splash",
        style:
         TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.bold,fontFamily: "cerapro"
        ),
        ),
      ),
     
    );
  
  }
}