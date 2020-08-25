import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 1200 ){
          return DesktopNavbar();
        } else if ( constraints.maxWidth > 800 && constraints.maxWidth<1200){
          return DesktopNavbar();
        } else{
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20 , horizontal: 40),
      child: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Live AI Courses", 
            style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.yellow, fontSize: 30 
            ),),
            Row(
              
              children: [
            // Text("About", style: TextStyle( color: Colors.blueGrey)),
            SizedBox(
              width: 30,
            ),
            // Text("Contact", style: TextStyle( color: Colors.blueGrey)),
            MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),                
              ),
              onPressed: (){openurl1();},
              child: Text("Connect on twitter", 
              style: TextStyle( color: Colors.white,)),
            ),
            SizedBox(
              width: 30,
            ),
            
            MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),                
              ),
              onPressed: (){ openurl();},
              child: Text("Connect on facebook", 
              style: TextStyle( color: Colors.white,)),
            )
          ],)
          ],
          
        ),
      ),
    );
  }
  openurl() {
    String url1 =
        "https://www.facebook.com/Statsmatter/";
    launch(url1);
  }
  openurl1() {
    String url2 =
        "https://twitter.com/statsmattersm";
    launch(url2);
  }
}


class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20 , horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
              Text("Live AI Courses", 
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.yellow, fontSize: 30 
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              // Text("About", style: TextStyle( color: Colors.red)),
              // SizedBox(
              //   width: 30,
              // ),
              // Text("Contact", style: TextStyle( color: Colors.red)),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),                
              ),
              onPressed: (){openurl1();},
              child: Text("Connect on twitter", 
              style: TextStyle( color: Colors.white,)),
            ),
            SizedBox(
              width: 30,
            ),
            
            MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),                
              ),
              onPressed: (){openurl();},
              child: Text("Connect on facebook", 
              style: TextStyle( color: Colors.white,)),
            )
            ],)
            ],
        ),
      ),
    );
  }

   openurl() {
    String url1 =
        "https://www.facebook.com/Statsmatter/";
    launch(url1);
  }
  openurl1() {
    String url2 =
        "https://twitter.com/statsmattersm";
    launch(url2);
  }
}