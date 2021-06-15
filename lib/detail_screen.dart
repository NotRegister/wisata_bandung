import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wisata_bandung/model/tourism_place.dart';
import 'package:wisata_bandung/main_screen.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace place;
  DetailScreen({required this.place});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var informationTS =
      TextStyle(fontFamily: 'Oxygen', fontSize: 12, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Hero(
                  tag: "imageAssets",
                  child: Image.asset(widget.place.imageAsset)),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.7),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white.withOpacity(1),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    FavoriteButton()
                  ],
                ),
              )),
            ]),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  widget.place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Staatliches',
                      color: Colors.white),
                )),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.place.openDays,
                        style: informationTS,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.place.openTime,
                        style: informationTS,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.place.ticketPrice,
                        style: informationTS,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                widget.place.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, fontFamily: 'Oxygen', color: Colors.white),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  scrollDirection: Axis.horizontal,
                  children: widget.place.imageUrls.map((url) {
                    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Image.network(url),
                      ),
                    );
                  }).toList()),
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}
