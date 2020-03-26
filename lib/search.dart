import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  @override
  _PageSearchState createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  String dropdownValueTime = 'ประเภทของร้าน';
  var dataTime = ['ประเภทของร้าน', 'กะเช้า', 'กะเย็น', 'เต็มวัน'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Text(
                    "เลือกประเภทร้านที่ต้องการ",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 20,
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                    child: DropdownButton(
                      value: dropdownValueTime,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xFF478DE0),
                      ),
                      iconSize: 24,
                      elevation: 20,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueTime = newValue;
                        });
                      },
                      items: dataTime
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    child: Text("ค้นหา"),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    color: Color(0xFF478DE0),
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF478DE0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ]),
              child: IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 20.0,
                color: Colors.white,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
