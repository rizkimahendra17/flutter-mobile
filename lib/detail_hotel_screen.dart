import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app_hotel/model/lodging_place.dart';
import 'package:app_hotel/checkout.dart';

class DetailHotelScreen extends StatelessWidget {
  final LodgingPlace place;

  const DetailHotelScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final LodgingPlace place;

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start, //untuk menentukan Susunan Content Sejajar
                      children: [
                        Text(
                          place.name,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 25.0, fontFamily:'Staatliches'),
                        ),
                        Text(place.location,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15.0, fontFamily:'Oxygen',color: Colors.grey[700],),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 30,
                        ),
                        Text('4.5',style: TextStyle(fontSize: 22, fontFamily:'Oxygen', fontWeight: FontWeight.bold ),),
                      ],
                    )
                  ),
                ],

              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text('Fasilitas',
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    child: Container(
                      // Set width and height to adjust the size of the Card
                      width: 90.0,
                      height: 90.0,
                      // Set background color with transparency (alpha value)
                      color: Colors.white.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.rice_bowl_sharp),
                          const SizedBox(height: 8.0),
                          Text(
                            'Lounge',
                            style: TextStyle(fontFamily: 'Oxygen', fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // Set width and height to adjust the size of the Card
                      width: 90.0,
                      height: 90.0,
                      // Set background color with transparency (alpha value)
                      color: Colors.white.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.propane_tank_rounded),
                          const SizedBox(height: 8.0),
                          Text('Office',style: TextStyle(fontFamily:'Oxygen', fontSize: 15)
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // Set width and height to adjust the size of the Card
                      width: 90.0,
                      height: 90.0,
                      // Set background color with transparency (alpha value)
                      color: Colors.white.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.wifi),
                          const SizedBox(height: 8.0),
                          Text('WI-FI',style: TextStyle(fontFamily:'Oxygen', fontSize: 15)
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      // Set width and height to adjust the size of the Card
                      width: 90.0,
                      height: 90.0,
                      // Set background color with transparency (alpha value)
                      color: Colors.white.withOpacity(0.5),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.store),
                          const SizedBox(height: 8.0),
                          Text('Store',style: TextStyle(fontFamily:'Oxygen', fontSize: 15)
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text('Aktivitas',
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              color: Colors.white,
              // margin: const EdgeInsets.all(15),
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(15),
                  height: 75,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start, //untuk menentukan Susunan Content Sejajar
                          children: [
                            Text(
                              place.Price,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 25.0, fontFamily:'Staatliches'),
                            ),
                            Text('Per Malam',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15.0, fontFamily:'Oxygen',color: Colors.grey[700],),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FilledButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return CheckoutScreen(place: place);
                                    }));
                                  },
                                  style: FilledButton.styleFrom(
                                    backgroundColor: Colors.orange
                                  ),
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    child: const Text('Booking Now',textAlign: TextAlign.center,)),
                                  ),
                            ],
                          )
                      ),
                    ],

                  ),
                ),
              ),

            ),

          ],
        ),
      ),
      backgroundColor: Colors.white,

    );
  }
}

class DetailWebPage extends StatefulWidget {
  final LodgingPlace place;

  const DetailWebPage({Key? key, required this.place}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'APP HOTEL',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.place.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.place.imageUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                widget.place.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Staatliches',
                                ),
                              ),

                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}