import 'package:flutter/material.dart';
import 'package:wisata_bandung/detail_screen.dart';
import 'package:wisata_bandung/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Bandung'),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (BuildContext context, int index) {
          final TourismPlace place = tourismPlaceList[index]; //! place

          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  place: place,
                );
              }));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 4, 6),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        place.imageAsset,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              place.name,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(place.location)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
