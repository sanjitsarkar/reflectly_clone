import 'package:flutter/material.dart';
import'package:flutter/services.dart'; 
import './widgets/card.dart';
import './models/stats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    
    return MaterialApp(
  
    debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
String _title="Hello";
bool start = false;
void changeTitle()
{
setState(() {
  if(!start)
  {
  _title="GoodBye";
  start=true;
  }
  else
  {
  _title ="Hello";
  start=false;
  }

});
}
  
  

  @override
  Widget build(BuildContext context) {
    // 
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      
      body: 
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
     ListView(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
         
          children: <Widget>[
           Container(
             height: screenHeight/3.5,
             width: screenWidth,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child:
                   Container(
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(bottomRight:Radius.circular(10.0)),
 gradient: LinearGradient(
                colors: [Colors.greenAccent,Colors.blueAccent],
                begin: Alignment.topRight,
                end:Alignment.bottomLeft
              )
),
child: 

Container(
 height: screenHeight/3.5,
             width: screenWidth,
  child:
Icon(Icons.person_outline,color: Colors.white.withOpacity(.4),
size: 100.0,)
  
),
                   ) ,
                 ),
                 Expanded(
                  
                  flex: 1,
                   child: Column(
                     
                     crossAxisAlignment: CrossAxisAlignment.end,
                     
children: <Widget>[
  InkWell(
    child: Container(

      margin: EdgeInsets.only(right: 0,top: 20),
      width:screenWidth/4,
      height: screenHeight/12,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomLeft: Radius.circular(100)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          
          color: Colors.black.withOpacity(.1),
          spreadRadius: 10.0,
          blurRadius: 10.0,
          offset: Offset(0, 10.0)
        )]
      ),
      child: Icon(Icons.settings,color: Colors.grey,size: 30.0,),
    ),
  ),
  Container(
    margin: EdgeInsets.only(top: 50,right: 70,left:10.0,bottom: 0.0),
    child:  Text("Xanjit Xarkar",textAlign: TextAlign.left,style: TextStyle(fontSize: 25.0),),
  ),
 
],
                   ),
                 )
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top:20.0),
             width: screenWidth,
             height: screenHeight/7,
             decoration: 
             BoxDecoration(
               color: Colors.white,
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 
               cardTop(0,"stories",Icon(Icons.edit,size: 70,color:Colors.blueAccent.withOpacity(.05),)),
               cardTop(0,"streak",Icon(Icons.face,size: 70,color:Colors.blueAccent.withOpacity(.05),)),
               cardTop(0,"favourites",Icon(Icons.favorite_border,size: 70,color:Colors.blueAccent.withOpacity(.05),)),
               
               ],
             ),
           ),
           Container(
             height: screenHeight/7.5,
             width: screenWidth,
             margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
             
             decoration:
             BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               boxShadow:[
                 BoxShadow(
                   color: Colors.greenAccent.withOpacity(.1),
                   blurRadius: 10.0,
                   spreadRadius: 10.0,
                   offset: Offset(0, 10.0)
                 )
               ],
              gradient: LinearGradient(
                colors: [Colors.greenAccent,Colors.blueAccent],
                begin: Alignment.topRight,
                end:Alignment.bottomLeft
              )
             ) ,
            child: Stack(
              children: <Widget>[
                // 
                Center(child: Text("Unlock Reflectly and\nbecomes your own hero",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18.0),))
              ],
            ),
           ),
           
           Container( 
             height: screenHeight/7.5,
             width: screenWidth,
             margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
             
             decoration:
             BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               boxShadow:[
                 BoxShadow(
                   color: Colors.black.withOpacity(.1),
                   blurRadius: 10.0,
                   spreadRadius: 10.0,
                   offset: Offset(0, 10.0)
                 )
               ],
              color: Colors.white,
            
             ) ,
            child: Stack(
              children: <Widget>[
             Positioned(  
               right:-20,
               top:20,  // 
            child:Text("Achievements",textAlign: TextAlign.right, style: TextStyle(color: Colors.grey.withOpacity(.2),fontWeight: FontWeight.bold, fontSize: 45.0),)),
              Positioned(
              left:20,
              bottom: 30.0,
                child: Text("Achievements",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,backgroundColor: Colors.white.withOpacity(.5)),),
              ),
              ],
            ),
           ),
           Container(
             height: screenHeight/4,
             width: screenWidth,
             

             child: Row(
               children: <Widget>[
         halfBox(context, Icon(Icons.star_border,size: 30,color: Colors.white.withOpacity(.5),), "Rate Reflectly\n5-stars", true),
         halfBox(context, Icon(Icons.group_add,size: 30,color: Colors.greenAccent.withOpacity(.5),), "Join the\nCommunity", false),
               ],
             ),
           )
          
          ],
        ),
     bottomNavigationBar:
     
    
  BottomNavigationBar(
    
         currentIndex: 0,
         
        selectedItemColor: Colors.black,
        
         items: [
        
new BottomNavigationBarItem(
  
  icon: Icon(Icons.notifications_none,color: Colors.grey,),
  title: Text(""),
),
new BottomNavigationBarItem(
  icon: Icon(Icons.add_circle_outline,color: Colors.grey,),
   title: Text(""),
),
new BottomNavigationBarItem(
  icon: Icon(Icons.person_outline,color: Colors.grey,),
   title: Text(""),
)

         ],
     
      ),
    //This trailing comma makes auto-formatting nicer for build methods.
    );
    
  }
  
 

  


}
Widget cardTop(int count, String title,Icon bgIcon)
{
        return Container(
        child:Stack(
          alignment: Alignment.center,
          children: <Widget>[
            
 RichText(
                         textAlign: TextAlign.center,
                         
      text: TextSpan(
        
        style: TextStyle(
          fontSize: 15.0,
        ),
        children: <TextSpan>[
          TextSpan(text: count.toString(), style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      TextSpan(text: '\n'+title,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
    ],
  ),
),
Positioned(

  child: bgIcon,
)
          ],
        )
        
    );
}



//half_card widegt
Widget halfBox(context,Icon ic,String desc,bool iscolor)
{
  
return Container(
                
             margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
             
             width: MediaQuery.of(context).size.width/2.5,
              decoration:
            BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               boxShadow:[
                 BoxShadow(
                   color: Colors.black.withOpacity(.1),
                   blurRadius: 10.0,
                   spreadRadius: 10.0,
                   offset: Offset(0, 10.0)
                 )
               ],
              
              gradient: iscolor?LinearGradient(
                colors: [Colors.greenAccent,Colors.blueAccent],
                begin: Alignment.topRight,
                end:Alignment.bottomLeft
              ):LinearGradient(
                colors: [Colors.white,Colors.white],
                begin: Alignment.topRight,
                end:Alignment.bottomLeft
              )
             ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ic,
                ),
                // 
                 Padding(
                   padding: EdgeInsetsDirectional.only(bottom: 20.0),
                child:Center(child: Text(desc,textAlign: TextAlign.left,style: iscolor?TextStyle(color: Colors.white,fontSize: 16.0):TextStyle(color: Colors.black,fontSize: 16.0),)))
              ],
            ),
           );
           
}
