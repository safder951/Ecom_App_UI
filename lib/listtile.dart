import 'package:flutter/material.dart';

class MylistView extends StatelessWidget {
  const MylistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
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
        body: MyListItem(),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  icon: new Icon(Icons.search),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Enter User Name',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 300),
              child: Text(
                "History",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
            myFunc(),
          ],
        ),
      ),
    );
  }
}

Widget myFunc() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('images/iphone.jpg'),
      radius: 20,
    ),
    title: Text("Iphone 12"),
    subtitle: Text(
      "⭐ 5.0 (23 Review)",
      style: TextStyle(color: Colors.grey, fontSize: 18),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "\$10",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}
