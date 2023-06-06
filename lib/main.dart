import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Subhanallah"),
          centerTitle: true,
        ),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello"),
                TextButton(onPressed: () {}, child: Text("Hello")),
                Text("Hello "),
                Text("Hello ")
              ],
            ),
            Column(
              children: [
                Text("Hello"),
                TextButton(onPressed: () {}, child: Text("Hello"))
              ],
            )
          ],
        ),


        // body: Column(
        //   children: [
        //     Row(
        //       children: [
        //         Text("Hello"),
        //         TextButton(onPressed: () {}, child: Text("Hello"))
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         Text("Hello"),
        //         TextButton(onPressed: () {}, child: Text("Hello"))
        //       ],
        //     )
        //   ],
        // ),

        // body: Column(                                   //  Столб
        //   children: [
        //     Text("Hello"),
        //     TextButton(onPressed: () {}, child: Text("Hello"))

        // body: Row(           Ряд
        //   children: [
        //     Text("Hello"),
        //     TextButton(onPressed: () {}, child: Text("Hello"))
        //   ],
        // ),


        // body: Container(
          //   color: Colors.amberAccent,
          //   child: Text("hgyfsjdcj"),
                              // KONTEYNERLAR
            // margin: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 30.0),
            // padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0)
            // margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
            // margin: EdgeInsets.all(20.5),
            // padding: EdgeInsets.all(20.5),


                     // RASMLAR
          // child: Image(
          //   image: AssetImage("assets/priroda.jpg"),
          // child: Image(
            // image: NetworkImage("https://cdn.pixabay.com/photo/2020/12/28/20/45/frozen-lake-5868472__480.jpg"),



                             // KNOPKALAR
          // child: TextButton.icon(label: Text("Bosma"), onPressed: () {}, icon: Icon(Icons.adb_sharp),),
          // child: OutlinedButton.icon(label: Text("Bosma"), onPressed: () {}, icon: Icon(Icons.adb_sharp),),
          // child: OutlinedButton.icon(label: Text("Bosma"), onPressed: () {}, icon: Icon(Icons.adb_sharp),),
          // child: ElevatedButton.icon(label: Text("Bosma"), onPressed: () {}, icon: Icon(Icons.adb_sharp),),
          // child: ElevatedButton(child: Text("Boschi"), onPressed: () {},)
          // child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.adb_sharp), label: Text("Sozlamalar"),
          // child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
          //  backgroundColor: Colors.lightGreenAccent
          //   ), child: const Text("KNOPKA"),
          // child: TextButton(onPressed: () {}, style: TextButton.styleFrom(
          //   backgroundColor: Colors.black
          // ),
          //   child: const Text("Knopkani bos"),
          // ),
          // child: ElevatedButton.icon(onPressed: () {},
          //     icon: Icon(Icons.adb_sharp),
          //     label: Text("Settings")),
          // child: Icon(Icons.adb_rounded, size: 35, color: Colors.red,),    Ikonkalar
        floatingActionButton: FloatingActionButton(
          child: Text("Bos"),
          backgroundColor: Colors.black,
          onPressed: () {
            print("Clicked");
          },
        ),
      ),
    );
  }
}