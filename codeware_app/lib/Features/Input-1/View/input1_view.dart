import 'package:codeware_app/Features/Input-1/Model/input1_model.dart';
import 'package:flutter/material.dart';

List input_1 = [
  {
    "0": {"id": 1, "title": "Gingerbread"},
    "1": {"id": 2, "title": "Jellybean"},
    "3": {"id": 3, "title": "KitKat"}
  },
  [
    {"id": 4, "title": "Lollipop"},
    {"id": 5, "title": "Pie"},
    {"id": 6, "title": "Oreo"},
    {"id": 7, "title": "Nougat"}
  ]
];

class GrocaryPage1 extends StatefulWidget {
  GrocaryPage1({super.key});

  @override
  State<GrocaryPage1> createState() => _GrocaryPage1State();
}

class _GrocaryPage1State extends State<GrocaryPage1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    super.initState();
    GrocaryList1();
  }

  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Dry Food's",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: input_1.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                             Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              elevation: 20,
                              child: Container(
                                height: _size.height * 0.05,
                                width: _size.width * 0.25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(input_1[index]["0"]['title'])),
                              ),
                            ),
                            Card(
                              elevation: 20,
                              child: Container(
                                height: _size.height * 0.05,
                                width: _size.width * 0.25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(input_1[index]["1"]['title'])),
                              ),
                            ),
                            Card(
                              elevation: 20,
                              child: Container(
                                height: _size.height * 0.05,
                                width: _size.width * 0.25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(input_1[index]["3"]['title'])),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
