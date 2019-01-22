import 'package:flutter/material.dart';
import 'package:movie_app/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;
  MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new Stack(
              children: <Widget>[
                new FadeInImage.assetNetwork(
                placeholder: "assets/placeholder.jpg",
                image: media.getBackDroprUrl(),
                fit: BoxFit.cover,
                height: 200.0,
                width: double.infinity,
                fadeInDuration: new Duration(microseconds: 40),
                ),
                new Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  right: 0.0,
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey[900].withOpacity(0.5),
                    ),
                    constraints: new BoxConstraints.expand(
                      height: 55.0,
                    ),
                  ),
                ),
                new Positioned(
                  left: 10.0,
                  bottom: 30.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          media.title,
                          style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
