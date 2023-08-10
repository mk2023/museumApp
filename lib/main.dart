import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart' ; 
import 'firebase_options.dart' ; 


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Museum App',
      theme: ThemeData(primarySwatch: Colors.cyan,),
      darkTheme: ThemeData.dark(),
        home: LoginPage(),
      );
  }
}


class LoginPage extends StatelessWidget {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Authentication'),
      ),
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Text('Login'),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}


class  MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Museum Artifact Information"),
        
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                  
                //1st Image of Slider
                Column(
                  children:<Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:2.0, vertical:18.0),
                      child: Text(
                        "Name of Artifact", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:2.0, vertical:16.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(6.0),
                        decoration: 
                        BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://themedialine.org/wp-content/uploads/2021/07/mesopotamia-civilization-begins_1600-1300x919-1-e1626194529789.jpg"),
                          fit: BoxFit.cover,
                        ),
                       ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0, vertical:2.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter description',
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                      ),
                    )
                  
                  ]
                ),
                  
                //2nd Image of Slider
                Column(
                  children:<Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:2.0, vertical:18.0),
                      child: Text(
                        "Name of Artifact", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                        ),
                      )
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:2.0, vertical:16.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(6.0),
                        decoration: 
                        BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://i0.wp.com/asiatimes.com/wp-content/uploads/2018/11/Artifict.jpg?fit=700%2C467&ssl=1"),
                          fit: BoxFit.cover,
                        ),
                       ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0, vertical:2.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter description',
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                      ),
                    )
                  
                  ]
                ),
                  
                //3rd Image of Slider
                Column(
                  children:<Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:2.0, vertical:18.0),
                      child: Text(
                        "Name of Artifact", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:2.0, vertical:16.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(6.0),
                        decoration: 
                        BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://squarecowmovers.com/wp-content/uploads/2017/06/How-Do-Museums-566x425.jpg"),
                          fit: BoxFit.cover,
                        ),
                       ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0, vertical:2.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter description',
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                        maxLines:8,
                        minLines:1,
                      ),
                      ),
                    )
                  
                  ]
                ),
                  
                //4th Image of Slider
                // Container(
                //   margin: EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: DecorationImage(
                //       image: NetworkImage("https://themedialine.org/wp-content/uploads/2021/07/mesopotamia-civilization-begins_1600-1300x919-1-e1626194529789.jpg"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                  
                // //5th Image of Slider
                // Container(
                //   margin: EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: DecorationImage(
                //       image: NetworkImage("https://themedialine.org/wp-content/uploads/2021/07/mesopotamia-civilization-begins_1600-1300x919-1-e1626194529789.jpg"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 600,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
          ),
        ],
      ),
  
    );
  }
}