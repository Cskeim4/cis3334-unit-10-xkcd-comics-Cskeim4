import 'package:flutter/material.dart';
import 'comic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'XKCD Comic List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//Most of our code goes here
class _MyHomePageState extends State<MyHomePage> {

  //List of comic objects
  List<Comic> xkcdComics = new List();

  _MyHomePageState() {
    //Add comics to the list
    xkcdComics.add( new Comic(844,"https://imgs.xkcd.com/comics/good_code.png","Good Code"));
    xkcdComics.add( new Comic(1513,"https://imgs.xkcd.com/comics/code_quality.png","Code Quality"));
    xkcdComics.add( new Comic(163,"https://imgs.xkcd.com/comics/donald_knuth.png","Donald Knuth"));
    xkcdComics.add( new Comic(2228,"https://imgs.xkcd.com/comics/machine_learning_captcha.png","Machine Learning Captcha"));
    xkcdComics.add( new Comic(1667,"https://imgs.xkcd.com/comics/algorithms.png","Algorithms"));
    // feel free to add your own comic from https://www.explainxkcd.com/wiki/index.php/Category:Programming
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder( //Display the comic objects in a list view
        itemCount: xkcdComics.length,
        itemBuilder: (BuildContext context, int position){
          return Card(
            child: ListTile( //Display the comic objects in a list tile and card for better formatting
              leading: Text('Number: ${xkcdComics[position].num.toString()}'
              ),
              title: Text('Title: ${xkcdComics[position].title}'
              ),
              subtitle: Image(image: NetworkImage(xkcdComics[position].img),
              ),
            )
          );

        },
      ),
    );
  }

}
