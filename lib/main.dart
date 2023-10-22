import 'package:flutter/material.dart';


void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 5, 153, 87),
                  Color.fromARGB(255, 24, 164, 148),
                  Color.fromARGB(255, 89, 149, 222),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Hello Paddi",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
               const SizedBox(height: 20,),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height * 0.28, // Adjust this value to expand or shrink the white container
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60,),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Color.fromRGBO(239, 238, 237, 0.988),
                        blurRadius: 20,
                        offset: const Offset(0, 10)
                      ),]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            
                            border: Border(bottom: BorderSide(color: Colors.grey))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email or Phone number",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
               const SizedBox(height: 15,),
               Text("Forget Password?", style: TextStyle(color: Colors.grey),),
               SizedBox(height: 30,),
               Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 0, 230, 150) 
                ),
                child: const Center(
                  child: Text("Login", style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                ),
               ),
               SizedBox(height: 30,),
               Text("Login with social media", style: TextStyle(color: Colors.grey),),
               SizedBox(height: 25,),
               Row(
                children: <Widget>[
                  Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 5, 56, 99),
                    ),
                    child: Center(
                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black
                    ),
                     child: Center(
                      child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  
                  ),
                  ),
                   SizedBox(width: 30,),
                  Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 190, 23, 23)
                    ),
                     child: Center(
                      child: Text("Instagram", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ),
                ],
               )
                ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
