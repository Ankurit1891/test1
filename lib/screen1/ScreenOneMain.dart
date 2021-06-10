import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/screen1/piechart.dart';
// import 'package:test1/screen1/piechart.dart';
import 'package:test1/screen2/screen2.dart';
import 'package:fl_chart/fl_chart.dart';

class ScreenOneMain extends StatefulWidget {
  @override
  _ScreenOneMainState createState() => _ScreenOneMainState();
}
bool show=true;
bool recSelected=true;
bool retSelected=false;
bool clicked=false;
class _ScreenOneMainState extends State<ScreenOneMain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[900],
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body:
      NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overScroll){
                overScroll.disallowGlow();
                return ;
                },
      child: Container(
        color: Colors.deepPurple[900],
        child: Stack(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.deepPurple[900],
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Row(
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
                                            color: Colors.blueGrey[400],
                                            fontSize: 17),
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
                                    radius: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: true,
                          child: Container(
                              padding: EdgeInsets.only(bottom: 10),
                              margin: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "FREQUENTLY CONTACTED",
                                style: TextStyle(
                                    color: Colors.blueGrey[400],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              avatars("Harshada",
                                  "https://image.shutterstock.com/image-photo/sunset-coast-lake-nature-landscape-260nw-1960131820.jpg"),
                              avatars("Naveen",
                                  "https://c4.wallpaperflare.com/wallpaper/351/365/83/beautiful-sceneries-of-nature-hd-1920x1200-wallpaper-preview.jpg"),
                              avatars("Vivek",
                                  "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                              avatars("Rahul",
                                  "https://images.unsplash.com/photo-1516475429286-465d815a0df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                              Visibility(
                                visible: true,
                                child: avatars("Naveen Priya",
                                    "https://myrepublica.nagariknetwork.com/uploads/media/nature_20210209150332.jpeg"),
                              ),
                              Visibility(
                                visible: false,
                                  child: Container(
                                padding: EdgeInsets.only(top: 13),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.deepPurple[900],
                                        ),
                                      ),
                                      radius: 30,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "RECENTS",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.blueGrey[400],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          margin: EdgeInsets.only(left: 15),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              avatars("Harshada",
                                  "https://image.shutterstock.com/image-photo/sunset-coast-lake-nature-landscape-260nw-1960131820.jpg"),
                              avatars("Naveen",
                                  "https://c4.wallpaperflare.com/wallpaper/351/365/83/beautiful-sceneries-of-nature-hd-1920x1200-wallpaper-preview.jpg"),
                              Visibility(
                                  visible: false,
                                  child: avatars("Vivek",
                                      "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80")),
                              Visibility(
                                  visible: false,
                                  child: avatars("Rahul",
                                      "https://images.unsplash.com/photo-1516475429286-465d815a0df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80")),
                              Visibility(
                                visible: false,
                                child: avatars("Naveen Priya",
                                    "https://myrepublica.nagariknetwork.com/uploads/media/nature_20210209150332.jpeg"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){setState(() {
                                show=!show;
                              });},
                              child: Container(
                                  padding: EdgeInsets.only(bottom: 10, top: 10),
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "RECENTS",
                                    style: TextStyle(
                                        color: Colors.blueGrey[400],
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                show=!show;
                              });},
                              child: Container(
                                  padding: EdgeInsets.only(bottom: 5, left: 10,top: 4),
                                  child: Center(
                                      child: Icon(show?
                                    Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined,
                                    color: Colors.white54,
                                    size: 18,
                                  ))),
                            )
                          ],
                        ),
                        Visibility(
                          visible: show,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                avatars("Harshada",
                                    "https://image.shutterstock.com/image-photo/sunset-coast-lake-nature-landscape-260nw-1960131820.jpg"),
                                avatars("Naveen",
                                    "https://c4.wallpaperflare.com/wallpaper/351/365/83/beautiful-sceneries-of-nature-hd-1920x1200-wallpaper-preview.jpg"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                                avatars("Rahul",
                                    "https://images.unsplash.com/photo-1516475429286-465d815a0df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: show,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                avatars("Harshada",
                                    "https://image.shutterstock.com/image-photo/sunset-coast-lake-nature-landscape-260nw-1960131820.jpg"),
                                avatars("Naveen",
                                    "https://c4.wallpaperflare.com/wallpaper/351/365/83/beautiful-sceneries-of-nature-hd-1920x1200-wallpaper-preview.jpg"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                                avatars("Rahul",
                                    "https://images.unsplash.com/photo-1516475429286-465d815a0df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: show,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                avatars("Harshada",
                                    "https://image.shutterstock.com/image-photo/sunset-coast-lake-nature-landscape-260nw-1960131820.jpg"),
                                avatars("Naveen",
                                    "https://c4.wallpaperflare.com/wallpaper/351/365/83/beautiful-sceneries-of-nature-hd-1920x1200-wallpaper-preview.jpg"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                                avatars("Rahul",
                                    "https://images.unsplash.com/photo-1516475429286-465d815a0df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: show,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                avatars("Harshada",
                                    "https://image.shutterstock.com/image-photo/sunset-coast-lake-nature-landscape-260nw-1960131820.jpg"),
                                avatars("Naveen",
                                    "https://c4.wallpaperflare.com/wallpaper/351/365/83/beautiful-sceneries-of-nature-hd-1920x1200-wallpaper-preview.jpg"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                                avatars("Rahul",
                                    "https://images.unsplash.com/photo-1516475429286-465d815a0df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                                avatars("Vivek",
                                    "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
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
            DraggableScrollableSheet(
                initialChildSize: 0.07,
                maxChildSize: 0.8,
                minChildSize: 0.07,
                builder: (BuildContext context,ScrollController scrollController){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
                    ),
                    padding: EdgeInsets.only(top: 5),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 15),
                                margin: EdgeInsets.only(left: 15),
                                alignment:Alignment.centerLeft,
                                child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only( bottom: 5),
                                           // margin: EdgeInsets.only(left: 15),
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "YOUR ACCOUNT",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            Row(
                              children: [
                                acc("1.2L", "total\nexchanges"),
                                acc("129", "upcoming\npaybacks"),
                                acc("4632", "upcoming\ndues"),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/2.28,
                              child: Mains(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                      ],
                        ),
                      ),
                    ),
                  );
                },
              ),

          ]),
      ),
      ),
    );
  }
}

Widget avatars(String title, String url) {
  return Container(
    padding: EdgeInsets.only(left: 10, top: 10),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 30,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 11, color: Colors.white, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}

Widget acc(String money, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 15),
        padding: EdgeInsets.only(right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\u{20B9}${money}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(
              height: 5,
            ),
            Text(text,
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    ],
  );
}

class Mains extends StatefulWidget {
  @override
  _MainsState createState() => _MainsState();
}

class _MainsState extends State<Mains> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0,5),

          ),],

          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: SingleChildScrollView(
          child: Container(
            // height: 400,
            width: 390,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          retSelected=true;
                          recSelected=false;
                        });

                      },
                      child: Container(
                        padding:EdgeInsets.only(left: 20,top: 10),child: Text("return",style: TextStyle(fontSize: 17,
                        fontWeight: retSelected?FontWeight.bold:FontWeight.normal,
                      ),),),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          retSelected=false;
                          recSelected=true;
                        });

                      },
                      child: Container(
                          padding:EdgeInsets.only(left: 10,top: 10),child: Text("recieve",style: TextStyle(fontSize: 17,
                        fontWeight: recSelected?FontWeight.bold:FontWeight.normal,
                      ),)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                        padding: retSelected?EdgeInsets.only(left: 5):EdgeInsets.only(left: 70),
                        child:Text("___",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: retSelected,
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: containermain("\u{20B9}38,139","of \u{20B9}42,812" , "\u{20B9}4632", "of \u{20B9}42,812")
                              ),
                            ),
                            Visibility(
                              visible: recSelected,
                              child: Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: containermain("\u{20B9}29,256","of \u{20B9}30,475" , "\u{20B9}1,219", "of \u{20B9}30,475"),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Visibility(
                              visible: retSelected,
                              child: Container(
                                child: CircleAvatar(
                                    radius: 100,
                                    backgroundImage: AssetImage("assets/images/pie1new.png"),
                                  ),
                                  ),
                            ),
                            Visibility(
                              visible: recSelected,
                              child: Container(
                                child: CircleAvatar(
                                  radius: 95,
                                  backgroundImage: AssetImage("assets/images/pie2.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //   ),
                        // ),
                      ],
                    ),
                    Visibility(
                      visible: recSelected,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin:EdgeInsets.only(left: 15),
                                child: optionalExtended("NEXT 10 DAYS", "92%")),
                            Container(
                                padding: EdgeInsets.only(left: 30),
                                child: optionalExtended("TIME UNTIL 100%", "128 days")),
                          ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: clicked?MainAxisAlignment.spaceBetween:MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              clicked=!clicked;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            padding: EdgeInsets.only( bottom: 10,top: 20),
                            alignment: Alignment.centerLeft,
                            child: Text("FRIENDS",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        GestureDetector(
                        onTap: (){
                              setState(() {
                                  clicked=!clicked;
                                  });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Visibility(
                                    visible: clicked,
                                    child: Icon(Icons.keyboard_arrow_up_outlined))),
                          ),
                      ],
                    ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        clicked=!clicked;
                      });
                    },
                    child: Visibility(
                      visible: !clicked,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                           CircleAvatar(
                             backgroundImage: NetworkImage("https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                             radius: 10,
                           ),
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
                              radius: 10,
                            ),
                              Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                  ),
                    BottomExtendedTile(show: clicked,url:"https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80",name:"Ananya Rao",info:"last interacted: 7d ago",amount:"3,332",due:"due"),
                    BottomExtendedTile(show: clicked,url: "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80",name: "Rajashi Prakash",info: "last interacted: 3d ago",amount: "800",due: "due",),
                    BottomExtendedTile(show: clicked,url: "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80",name: "Harshada Nikam",info: "last interacted: 4d ago",amount: "250",due: "due",),
                    BottomExtendedTile(show: clicked,url: "https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80",name: "John Born",info: "last interacted: 6d ago",amount: "50",due: "due",),
                  ],
                ),
               /////////////////////////////////////////////////
              ],
            ),

          ),
        ),
      ),
    );
  }
}


Widget containermain(String partialMoney,String totalMoney,String partialMoney1,String totalMoney1)
{
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only( bottom: 15),
          alignment: Alignment.centerLeft,
          child: Text(retSelected?
            "RETURNED":"RECIEVED",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(partialMoney,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        Container(
          padding: EdgeInsets.only(left: 10,bottom: 20),
          child: Text(totalMoney,style: TextStyle(color: Colors.grey[800]),),
        ),
        Container(
          padding: EdgeInsets.only( bottom: 15),
          alignment: Alignment.centerLeft,
          child: Text("UPCOMING",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(partialMoney1,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(totalMoney1,style: TextStyle(color: Colors.grey[800]),),
        ),
      ],
    );
}

class BottomExtendedTile extends StatelessWidget {
  String url,name,info,amount,due;
  bool show;
  BottomExtendedTile({this.show,this.url,this.name,this.info,this.amount,this.due});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: show,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(left: 15,bottom: 10),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwoMain()));
                },
                child: Row(

                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(url),
                      radius: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          ),
                          Container(child: Text(info,style: TextStyle(color: Colors.grey[600],fontSize: 11),),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("\u{20B9}"+amount,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ),
                    Container(child: Text(due,style: TextStyle(color: Colors.grey[600],fontSize: 12)),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget optionalExtended(String info,String main)
{
  return Container(
    padding: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(info,style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.bold),),
        Text(main,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 25
        ),),
      ],
    ),
  );
}



