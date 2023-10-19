import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),
    debugShowCheckedModeBanner: false,);
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Project-1"),
      backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("Search me",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Set me",context);}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 0,
        onPressed: (){MySnackBar("Search me",context);},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(

              padding: EdgeInsets.all(0),
                child:
                UserAccountsDrawerHeader(
              accountName:  Text("Murshed Eamin",style: TextStyle(color: Colors.cyanAccent),),
              accountEmail: Text("murshedeamin@gmail.com",style: TextStyle(color: Colors.green),),
                  currentAccountPicture:CircleAvatar(child: ClipOval(child:Image.asset("assets/images/3.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,),),),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/2.jpg"),
                      fit: BoxFit.cover),
            ),
              ),
            ),
            ListTile(leading: Icon(Icons.people),
              title: Text("Profile"),
              onTap: (){MySnackBar("Search me",context);},),
            ListTile(leading: Icon(Icons.person),
              title: Text("Contact"),
              onTap: (){MySnackBar("Add ne contact",context);},),
            ListTile(leading: Icon(Icons.add),
              title: Text("Add"),
              onTap: (){MySnackBar("Add me",context);},),
            ListTile(leading: Icon(Icons.search),
              title: Text("Search"),
              onTap: (){MySnackBar("Search me",context);},),
            ListTile(leading: Icon(Icons.undo),
              title: Text("Undo"),
              onTap: (){MySnackBar("Undo me",context);},),
            ListTile(leading: Icon(Icons.gps_not_fixed_outlined),
              title: Text("GFt"),
              onTap: (){MySnackBar("Set me",context);},),
            ListTile(leading: Icon(Icons.dangerous),
              title: Text("Dangerous"),
              onTap: (){MySnackBar("Do not open",context);},),
            ListTile(leading: Icon(Icons.face),
              title: Text("People"),
              onTap: (){MySnackBar("Got me",context);},),
          ],
        ),
      ),
    );
  }
}