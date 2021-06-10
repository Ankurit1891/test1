import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/screen1/ScreenOneMain.dart';

class ScreenTwoMain extends StatefulWidget {

  @override
  _ScreenTwoMainState createState() => _ScreenTwoMainState();
}

class _ScreenTwoMainState extends State<ScreenTwoMain> {

  ScreenOneMain screenOne = new ScreenOneMain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[900],
        leading: GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
          Icons.keyboard_arrow_down_rounded,
          size: 50,
        ),
            ),),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.deepPurple[900],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(top: 2),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jay Sethi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "reachjaysethi-1@oksbi",
                              style: TextStyle(
                                  color: Colors.blueGrey[400], fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          //backgroundImage: NetworkImage(widget.url),
                          radius: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Message",
                          style: TextStyle(
                            color: Colors.white, fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.95,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 15, top: 20),
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "YOUR RELATIONSHIP",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          acc("19k", "total\nexchanges"),
                          acc("983", "upcoming\npaybacks"),
                          acc("123", "upcoming\ndues"),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 15, top: 20),
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "UPCOMING",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 230, 0, 1),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    //backgroundImage: NetworkImage(widget.url),
                                    radius: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Re: "+"Ankurit",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Harshada",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text("to You",
                                            style: TextStyle(
                                                color: Colors.grey[600])),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 1),
                                      child: Text("22 Aug",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey))),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 10, top: 1),
                                  child: Text("\u{20B9}87",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   height: 40,
          //   color: Colors.blue,
          // ),

          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 1.305,
                left: MediaQuery.of(context).size.width / 1.3),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow[700],
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 1), width: 5)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/40,top: MediaQuery.of(context).size.height/1.225),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

Widget acc(String money, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.only(right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\u{20B9}${money}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            Text(text,
                style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.w600))
          ],
        ),
      ),
    ],
  );
}
