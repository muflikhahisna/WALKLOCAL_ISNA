import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp(),
  ));
}

bool _prev = false;
bool _next = true;
bool _first = true;
bool _second = false;
bool _third = false;
bool _fourth = false;



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Alpha2',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Image.asset("assets/maps.jpeg"),
                  Positioned(
                    child: new RaisedButton(
                      onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.gps_fixed,color: Colors.green, size: 35.0,),
                      ),
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                    bottom: 10.0,
                    left: 355.0,
                  )
                ],
              ),
            ),
            Expanded(child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                            child: Text("MINGGU, 20 OKTOBER 2018"),
                          ),
                          Text("Selamat Sore", style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0
                            ),)
                        ],
                      )),
                      Icon(Icons.access_time)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(onPressed: (){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context) => MyApp1()));

                  },
                      color: Colors.white70,
                      highlightColor: Colors.white70,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),borderSide: BorderSide(
                        width: 1.0, color: Colors.grey
                      )
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                            child: Icon(Icons.search, color: Colors.green,),
                          ),
                          Expanded(child: Text("Mau pergi kemana?", style: TextStyle(
                            color: Colors.grey
                          ),),),
                          Icon(Icons.directions, color: Colors.green, )
                        ],
                      )
                  ),
                ),
                Expanded(
                  child: MediaQuery.removePadding(context: context,
                      removeTop: true,
                      child: ListView(

                        children: <Widget>[
                          Divider(
                            color: Colors.grey,),
                          ListTile(
                            leading: Icon(Icons.location_on, color: Colors.green,),
                            title: Text("Universitas Amikom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            subtitle: Text("Condong Catur, Depok, Sleman"),
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 70.0,),
                          ListTile(
                            leading: Icon(Icons.location_on, color: Colors.green,),
                            title: Text("Universitas Amikom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text("Condong Catur, Depok, Sleman"),
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 70.0,),
                          ListTile(
                            leading: Icon(Icons.location_on, color: Colors.green,),
                            title: Text("Universitas Amikom", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            subtitle: Text("Condong Catur, Depok, Sleman"),
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 70.0,),
                        ],
                      ),)
                )
              ],
            ))
          ],
        ),
      )

    );
    // TODO: implement build
  }

}

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                    icon: Icon(Icons.chevron_left, color: Colors.black,),
                    onPressed: () {
                      Navigator.pop(context);
                    }
                    ),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: TextField(
                    decoration:
                    InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                          15.0, 10.0, 10.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),

                      hintText: "Mau pergi kemana?",
                    ),
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(55.0)),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 11.0, 0.0, 2.0),
                child: FlatButton(onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.map,
                          color: Colors.green,),
                        Expanded(
                          child:
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                30.0, 20.0, 0.0, 20.0),
                            child: Text("Pilih dari peta",
                              style: TextStyle(
                                fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),

                        Icon(Icons.chevron_right, color: Colors.black)
                      ],
                    )),
              ),

              Expanded(
                child:
                MediaQuery.removePadding(context: context,
                    child:
                    ListView(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Divider(
                                  color: Colors.grey,
                                  indent: 70.0,),
                              ],
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on, color: Colors.green,),
                          title: Text("Universitas Amikom",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          subtitle: Text("Condong Catur, Depok, Sleman"),
                        ),
                        Divider(
                          color: Colors.grey,
                          indent: 70.0,),
                        ListTile(
                          leading: Icon(Icons.location_on, color: Colors.green,),
                          title: Text("Universitas Amikom",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("Condong Catur, Depok, Sleman"),
                        ),
                        Divider(
                          color: Colors.grey,
                          indent: 70.0,),
                        ListTile(
                          leading: Icon(Icons.location_on, color: Colors.green,),
                          title: Text("Universitas Amikom", style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          subtitle: Text("Condong Catur, Depok, Sleman"),
                        ),
                        Divider(
                          color: Colors.grey,
                          indent: 70.0,),
                      ],
                    ),
                removeTop: true,),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 120.0,
                  child:
                  FlatButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp2()));

                  },
                      color: Colors.green,
                      highlightColor: Colors.green,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),borderSide: BorderSide(
                          width: 1.0, color: Colors.green
                      )
                      ),
                      child: Text("Directions", style: TextStyle(
                          color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'Flutter Alpha2',
        theme: new ThemeData(
        primarySwatch: Colors.green,
    ),
      home: Scaffold(
        body: ViewPV(),      ),
    );
  }

}

class ViewPV extends StatefulWidget{
  @override
  ViewPVState createState() => ViewPVState();
}

class ViewPVState extends  State<ViewPV>{

  void _PageChangeListener (int i){
    setState(() {
      if (i == 0){
        _prev = false;
        _next = true;
        _first = true;
        _second = false;
        _third = false;
        _fourth = false;
      }else if(i == 1){
        _prev = true;
        _next = true;
        _first = false;
        _second = true;
        _third = false;
        _fourth = false;
      }else if(i == 2){
        _prev = true;
        _next = true;
        _first = false;
        _second = false;
        _third = true;
        _fourth = false;
      }else{
        _prev = true;
        _next = false;
        _first = false;
        _second = false;
        _third = false;
        _fourth = true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 520.0,
              width: 450.0,
              child: Image.asset("assets/maps1.jpg"),
            ),
            Positioned(
              child: new RaisedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.gps_fixed,color: Colors.green, size: 25.0,),
                ),
                shape: CircleBorder(),
                color: Colors.white,
              ),
              bottom: 80.0,
              left: 270.0,
            ),
            Positioned(
              child: new RaisedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.map,color: Colors.orange, size: 25.0,),
                ),
                shape: CircleBorder(),
                color: Colors.white,
              ),
              bottom: 20.0,
              left: 270.0,
            ),
          ],
        ),
        Expanded(child:
        Stack(
          children: <Widget>[
            PageView(
              onPageChanged: _PageChangeListener,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                          child: Card(child: Icon(Icons.map, size: 60.0, color: Colors.white,),
                            color: Colors.green,
                          )

                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                            child: Text("TransJogja U2",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              ),),
                          ),
                          Text("Tujuan Terminal Condong Catur",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                          Text("Turun di Halte UPN",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                          child: Card(child: Icon(Icons.map, size: 60.0, color: Colors.white,),
                            color: Colors.green,
                          )

                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                            child: Text("TransJogja U2",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              ),),
                          ),
                          Text("Tujuan Terminal Condong Catur",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                          Text("Turun di Halte UPN",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                          child: Card(child: Icon(Icons.map, size: 60.0, color: Colors.white,),
                            color: Colors.green,
                          )

                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                            child: Text("TransJogja U2",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              ),),
                          ),
                          Text("Tujuan Terminal Condong Catur",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                          Text("Turun di Halte UPN",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                          child: Card(child: Icon(Icons.map, size: 60.0, color: Colors.white,),
                            color: Colors.green,
                          )

                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                            child: Text("TransJogja U2",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              ),),
                          ),
                          Text("Tujuan Terminal Condong Catur",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                          Text("Turun di Halte UPN",
                            style: TextStyle(
                              color: Colors.green,
                            ),),
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
            Positioned(child:
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child:
              Container(
                width: 65.0,
                child:
                FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.red,
                  onPressed: (){},
                  child:
                  Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text("End", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ))
                  ),),
              ),

            ),
              bottom: 29.0,
              right: 0.0,
            ),

          ],
        )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: new Container(
                    alignment: Alignment(1.0, 0.0),
                    child: AnimatedCrossFade(
                        firstChild: Icon(Icons.chevron_left, size: 15.0, color: Colors.black87,),
                        secondChild: Icon(Icons.chevron_left, size: 15.0, color: Colors.white,),
                        crossFadeState: _prev ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 100)
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                child: Center(
                  child: Container(
                    child: Center(
                      child: AnimatedCrossFade(
                          firstChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.black87,),
                          secondChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.grey,),
                          crossFadeState: _first ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                          duration: Duration(milliseconds: 100)
                      ),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                child: Container(
                  child: AnimatedCrossFade(
                      firstChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.black87,),
                      secondChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.grey,),
                      crossFadeState: _second ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 100)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                child: Container(
                    child: Center(
                      child: AnimatedCrossFade(
                          firstChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.black87,),
                          secondChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.grey,),
                          crossFadeState: _third ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                          duration: Duration(milliseconds: 100)
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: Center(
                  child: Container(
                    child: AnimatedCrossFade(
                        firstChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.black87,),
                        secondChild: Icon(Icons.brightness_1, size: 10.0, color: Colors.grey,),
                        crossFadeState: _fourth ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 100)
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: AnimatedCrossFade(
                      firstChild: Icon(Icons.chevron_right, size: 15.0, color: Colors.black87,),
                      secondChild: Icon(Icons.chevron_right, size: 15.0, color: Colors.white,),
                      crossFadeState: _next ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 100)
                  ),
                )
              ),
            ],
          ),
        )

      ],
    );

  }
}