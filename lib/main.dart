import 'package:flutter/material.dart';

import 'package:app_flutter_card_scroll/app.dart';
import 'package:app_flutter_card_scroll/NewArticle.dart';
import 'package:app_flutter_card_scroll/NewsHelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SHRINE',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SHRINE"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: <Widget>[
          Padding(
            child: Icon(Icons.search, color: Colors.white),
            padding: const EdgeInsets.only(right: 20.0),
          ),
          Padding(
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
            padding: const EdgeInsets.only(right: 20.0),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView.builder(
          itemBuilder: (context, position) {
            NewsArticle article = NewsHelper.getArticle(position);
            return Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.5, 0.0, 0.5),
              // child: Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 6.0, 6.0, 16.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 100.0,),
                        width: 150.0,
                        child: Padding(
                          padding: const EdgeInsets.all(0.1),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/"+ article.imageAssetName, fit: BoxFit.cover,),
                              Text(article.title),
                              Text(article.privacy),
                            ],
                          ),
                        )
                              
                      ),
                      
                      Container(
                        margin: const EdgeInsets.only(left: 100.0,),
                        width: 200.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 15.0, 5.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/"+ article.imageAssetName, fit: BoxFit.cover,),
                              Text(article.title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16.0),),
                              Text(article.privacy),
                            ],
                          ),
                        )
                              
                      ),
                     Container(
                       margin: const EdgeInsets.only(right: 80.0,),
                        width: 100.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 15.0, 5.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/"+ article.imageAssetName, fit: BoxFit.contain,),
                              Text(article.title),
                              Text(article.privacy),
                            ],
                          ),
                        )
                              
                      ),

                      
                    ],
                  ),
                ),
              // ),
            );
          },
          itemCount: NewsHelper.articleCount,
          scrollDirection: Axis.horizontal,
        ),
      ),
      drawer: Drawer(),
    );
  }
}
