import 'package:eccomerce_app/menucard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ecom App UI',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          actions: <Widget>[
            Center(
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 30, right: 60),
              height: 190,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 200,
            child: Container(
              child: Text(
                "User",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 200,
            child: Container(
              margin: EdgeInsets.only(bottom: 100),
              child: Text(
                "abc@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 200,
            child: Container(
              margin: EdgeInsets.only(bottom: 100),
              child: Text(
                "logout",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            child: Container(
              child: Text(
                "ACCOUNT INFORAMTION",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 30,
            child: Container(
              child: Text(
                "Full Name",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Positioned(
            left: 340,
            top: 310,
            child: Container(
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 30,
            child: Container(
              child: Text(
                "User",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 30,
            child: Container(
              child: Text(
                "Email",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 30,
            child: Container(
              child: Text(
                "abc@gmail.com",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 30,
            child: Container(
              child: Text(
                "Phone",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: 30,
            child: Container(
              child: Text(
                "+9231-2345678",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 30,
            child: Container(
              child: Text(
                "Address",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 30,
            child: Container(
              child: Text(
                "Karachi,Random Street,House No.3",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            top: 590,
            left: 30,
            child: Container(
              child: Text(
                "Gender",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 620,
            left: 30,
            child: Container(
              child: Text(
                "Male",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          // Positioned(
          //   top: 660,
          //   left: 30,
          //   child: Container(
          //     child: Text(
          //       "Date of Birth",
          //       style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 690,
          //   left: 30,
          //   child: Container(
          //     child: Text(
          //       "Novemeber,30,1998",
          //       style: TextStyle(fontSize: 20, color: Colors.grey),
          //     ),
          //   ),
          // ),
          Positioned(
            left: 280,
            top: 630,
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductPage()));
                },
                child: Text("Next Page"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      side: BorderSide(color: Colors.yellow)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
