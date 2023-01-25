import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirrorwall_3/views/screens/global.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  InAppWebViewController? inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTT Platform",style: TextStyle(color: Colors.white,fontSize: 20),),
        backgroundColor: Colors.blue,
      ),
      body:
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 15,right: 15),
          child: GridView.builder(
            itemCount: Global.webname.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
            ),
            itemBuilder: ( context,  index){
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'Site1' , arguments: Global.webname[index]);
                    });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Image.network("${Global.webname[index]['name']}",fit: BoxFit.fill,)));
            },
          ),
          // child: Container(
          //   height: 100,
          //   width: 100,
          //   alignment: Alignment.center,
          //   child:
          //
          //   Text("${e['name']}",style: TextStyle(color: Colors.white,fontSize: 35),),
          //
          //   decoration: BoxDecoration(
          //     color: Colors.green[500],
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          // ),
        ),
               ),

          // ],
      //   ),
      // ),
    );
  }
}
