import 'package:flutter/material.dart';
 void main()=>runApp(MyApp());
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Home(),
     );
   }
 }

 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }

 class _HomeState extends State<Home> {
   List list=['Ali','Mohamed','Ahmed'];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Profile',style: TextStyle(color: Colors.white),),
         backgroundColor: Colors.pink,
       ),
       body: SingleChildScrollView(
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Container(
                height: MediaQuery.of(context).size.height/3,
               color: Colors.pink.shade400,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,

                 children: [
                   CircleAvatar(minRadius: 50,),
                   SizedBox(height: 10,),
                   Text('Hassan Mohamed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                 ],
               ),
             ),
             Padding(padding: EdgeInsets.all(20),
             child: Row(
               children: [
                 Expanded(
                   flex: 4,
                   child: Text('Friends',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                 ),
                 Expanded(
                   flex: 1,
                   child:Icon(Icons.edit)
                 )
               ],
             ),
             ),
             Container(
               
               height: 400,
               child: ListView.builder(
                 padding: EdgeInsets.all(10),
                   itemCount: list.length,
                   itemBuilder:(context,i){
                     return Card(
                       color: Colors.pink.shade100,
                       child: ListTile(
                         title: Text(list[i]),
                         subtitle: Text('best friend'),
                         leading: CircleAvatar(child: Icon(Icons.person),),
                         trailing: Icon(Icons.remove_circle,color: Colors.red,),
                       ),
                     );
                   } ),
             )
           ],
         ),
       ),
     );
   }
 }
