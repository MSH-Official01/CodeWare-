import 'package:flutter/material.dart';

List input_2 = [
  [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "3": {"id": 3, "title": "KitKat"}
    },
    {
      "0": {"id": 8, "title": "Froyo"},
      "2": {"id": 9, "title": "Éclair"},
      "3": {"id": 10, "title": "Donut"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ]
];

class GrocaryPage2 extends StatefulWidget {
  const GrocaryPage2({super.key});

  @override
  State<GrocaryPage2> createState() => _GrocaryPage2State();
}

class _GrocaryPage2State extends State<GrocaryPage2> {
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
                  itemCount: input_2.length,
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
                                    child: Text(input_2[index]["0"]['title'])),
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
                                    child: Text(input_2[index]["1"]['title'])),
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
                                    child: Text(input_2[index]["3"]['title'])),
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
