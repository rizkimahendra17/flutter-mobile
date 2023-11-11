import 'package:flutter/material.dart';
import 'package:app_hotel/navigation_bottom.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:app_hotel/model/lodging_place.dart';
import 'package:app_hotel/detail_hotel_screen.dart';
import 'package:app_hotel/profile_content.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Atur tinggi App Bar
        child: AppBar(
          backgroundColor: Colors.grey[200],
          title: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10.0),
                margin: EdgeInsets.only(right: 10.0), // Margin di sebelah kanan CircleAvatar
                child:InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage(profile:'profile');
                        },
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.amber[800], // Warna lingkaran
                    child: Icon(
                      Icons.person, // Icon yang ingin Anda gunakan
                      color: Colors.white, // Warna ikon
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Rizki Mahendra'),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0), // Atur tinggi sesuai dengan ketinggian Card
            child: Container(),
          ),
        ),
      ),

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return BottomNavigationBarExample();
          } else if (constraints.maxWidth <= 1200) {
            return LodgingPlaceGrid(gridCount: 4);
          } else {
            return LodgingPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class LodgingPlaceList extends StatelessWidget {
  const LodgingPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index){
            final LodgingPlace place = lodgingPlaceList[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailHotelScreen(place: place);
                }));
              },
              child:Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(place.imageAsset,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(
                              fontFamily: 'Staatliches',
                              fontSize: 24,
                              color: Colors.grey[800],
                            ),
                          ),
                          Container(height: 10),
                          Text(
                            place.Price,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontFamily: 'Oxygen',
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              const Spacer(),
                              RatingScreen(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(height: 5),
                  ],
                ),
              ) ,
            );

          },
          itemCount: lodgingPlaceList.length,
        ),

    );

  }
}

class LodgingPlaceGrid extends StatelessWidget {
  final int gridCount;

  const LodgingPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: lodgingPlaceList.map((place) {
          return InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return DetailScreen(place: place);
              // }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      place.location,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class RatingScreen extends StatefulWidget {
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double rating = 0.0; // Inisialisasi peringkat awal

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (newRating) {
                setState(() {
                  rating = newRating; // Mengubah nilai rating
                });

                // Tampilkan dialog ketika peringkat diubah
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text(''),
                      content: Text('Anda Memberi Rating: $newRating'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Tutup dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        );
  }
}



