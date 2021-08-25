import 'package:flutter/material.dart';
import 'package:navigationdrawer_widget/page1.dart';
import 'package:navigationdrawer_widget/page2.dart';
import 'package:navigationdrawer_widget/page3.dart';
void main(){
  runApp(MaterialApp(
    title: 'Navigation Drawer',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home:MyApp()
  ));

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Navigation"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName:Text('Sabbir Ahmed'),
                accountEmail:Text('sabbirahmed1795@gmail.com'),
                currentAccountPicture:
                CircleAvatar(
                  child: Text("SA"),
                ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text("TAR"),
                ),
                CircleAvatar(
                  child: Text("RT"),
                ),
              ],
               ),
            ListTile(
              title: Text("Page 1"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
              print('page 1');
              Navigator.push(context, MaterialPageRoute(builder: (cnx){return Page1();}));
              },

            ),
            ListTile(
              title: Text("Page 2 two"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print('page 2');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return Page2();}));
              },
            ),
            ListTile(
              title: Text("Page 3"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                print('page 3');
                Navigator.push(context, MaterialPageRoute(builder: (cnx){return Page3();}));
              },
            ),
          ],
        ),
      ),
    );
  }
}
