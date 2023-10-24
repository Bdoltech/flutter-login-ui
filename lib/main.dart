import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 5, 153, 87),
          hintColor: const Color.fromARGB(255, 49, 110, 103),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Roboto',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 17, color: Colors.white),
            bodyText1: TextStyle(fontSize: 15, color: Colors.grey),
            button: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
            caption: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).colorScheme.secondary,
                  const Color.fromRGBO(153, 79, 95, 20),
                  const Color(0xFBA27412),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Text(
                        "Login",
                        style:  TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(height: 10),
                       Text(
                        "You Are Welcome",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
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
            top: MediaQuery.of(context).size.height * 0.28,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 60),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          const BoxShadow(
                            color:  Color.fromRGBO(239, 238, 237, 0.988),
                            blurRadius: 20,
                            offset:  Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey)),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.email, color: Theme.of(context).hintColor),
                                const SizedBox(width: 10),
                               const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey)),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.lock, color: Theme.of(context).hintColor),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: TextField(
                                    obscureText: true,
                                    decoration:  InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text("Forget Password?", style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Implement login logic
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 230, 150),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: double.infinity,
                        child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        // Navigate to account creation page
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountCreationPage()));
                      },
                      child: Text("Create an Account", style: TextStyle(color: Theme.of(context).hintColor, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 5),
                   const SizedBox(height: 60),
                    const Text("Login with social media", style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: SocialMediaButton("Facebook", Colors.blue),
                        ),
                       const  SizedBox(width: 30),
                        Expanded(
                          child: SocialMediaButton("Github", Colors.black),
                        ),
                       const  SizedBox(width: 30),
                        Expanded(
                          child: SocialMediaButton("Instagram", Colors.red),
                        ),
                      ],
                    ),
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

class SocialMediaButton extends StatelessWidget {
  final String text;
  final Color color;

  SocialMediaButton(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class AccountCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
      ),
      body: const Center(
        child: Text("Account Creation Page Content"),
      ),
    );
  }
}
