import 'package:flutter/material.dart';
import 'package:app_hotel/model/lodging_place.dart';
import 'package:app_hotel/detail_discount_screen.dart';



class DiscountPlaceList extends StatelessWidget {
  const DiscountPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index){
          final LodgingPlace place = lodgingPlaceList[index];
          return Column(
              children: <Widget>[
                Column(
                    children: <Widget>[
                      if (place.discount.isNotEmpty)
                      SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: place.discount.map((url) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(url),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ]
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailDiscountScreen(place: place);
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 16),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child:

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            if (place.discountHotel != null && place.discountHotel.isNotEmpty)
                              Image.asset(
                                place.discountHotel!,
                                height: 160,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                          ],
                        ),
                      ),
                      if (place.discountHotel != null && place.discountHotel.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
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
                            ],
                          ),
                        ),
                    ],

                  ),
                ),
              ],
            ) ;

        },
        itemCount: lodgingPlaceList.length,
      ),
    );
  }
}




