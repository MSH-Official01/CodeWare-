import 'package:codeware_app/Features/Input-1/View/input1_view.dart';
import 'package:codeware_app/Features/Input-2/View/input2_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        title: Text("Shop Now"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GrocaryPage1()));
                },
                child: Container(
                  height: _size.height * 0.10,
                  width: _size.width * 0.50,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Input-1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  )),
                ),
              ),
              SizedBox(height: _size.height * 0.030),
              InkWell(
                onTap: () {  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GrocaryPage2()));},
                child: Container(
                  height: _size.height * 0.10,
                  width: _size.width * 0.50,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Input-2",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
