import 'package:flutter/material.dart';
import 'comic.dart';

//Created automatically with the refactor feature
class ComicListCardWidget extends StatelessWidget {

  //Constructor with key, key is passed to the parent widget
  const ComicListCardWidget({
    Key key,
    @required this.xkcdComics,
  }) : super(key: key);

  //local variable for the comic list
  final Comic xkcdComics;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile( //Display the comic objects in a list tile and card for better formatting
          leading: Text('Number: ${xkcdComics.num.toString()}'
          ),
          title: Text('Title: ${xkcdComics.title}'
          ),
          subtitle: Image(image: NetworkImage(xkcdComics.img),
          ),
        )
    );
  }
}

//Extend a stateless widget, created manually
class ComicListTile extends StatelessWidget{
  Comic comic;

  ComicListTile(Comic this.comic){
    //this.xkcdComics = xkcdComics;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile( //Display the comic objects in a list tile and card for better formatting
          leading: Text('Number: ${comic.num.toString()}'
          ),
          title: Text('Title: ${comic.title}'
          ),
          subtitle: Image(image: NetworkImage(comic.img),
          ),
        )
    );
  }

}