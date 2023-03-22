import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:otpproject/NextScreen.dart';

class Home extends StatefulWidget {
 static const String id="Home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Homepage"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Phone Verification",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
              ),
                  SizedBox(height: 10),

              Text("We need to register your phone to get started",style: TextStyle(fontSize: 16),),
             // Note: Same code is applied for the TextFormField as well
TextField(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
    ),
  ),
),
             Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child:  ElevatedButton(onPressed: (){}, child: Text("Send your code")),
             )
            ],
          ),
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}