import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app_hotel/model/lodging_place.dart';
import 'package:app_hotel/main_home.dart';


class CheckoutScreen extends StatelessWidget {
  final LodgingPlace place;

  const CheckoutScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
          return DetailMobilePage(place: place);
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
      appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Center(
            child: Text(
              'Checkout',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
        Container(
        margin: EdgeInsets.all(8.0),
        height: 130,
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    // Bungkus Image.network dengan Container
                    padding: EdgeInsets.only(top: 4.0),
                    child: Image.network(place.imageAsset),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          place.name,
                          style: const TextStyle(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(place.location),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              height:400,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(8.0),
                      width: double.infinity,
                      child: Text('Room Details',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Oxygen',
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Date',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              '11 Nov 2023',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Guest',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              '2 Guest',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Breakfast',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Include',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Check-in Time',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              '14:00 WIB',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              '1 Night',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              place.Price,
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Service Fee',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'IDR 25.000',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              'Total Payment',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text('IDR 904.000',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Oxygen',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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

            Container(
              margin: EdgeInsets.all(8.0),
              height: 130,
              child: Card(
                child: Column(
                children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8),
                          width: double.infinity,
                          child: Text('Payment Method', style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Oxygen', fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    Column(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        child:ClipRRect(
                          child: Image.asset('images/master-card.png'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(8),
              height: 50,
              child: FilledButton(
                onPressed: () {
                  // Menampilkan alert pembayaran berhasil
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title: Text("Pembayaran Berhasil", style: TextStyle(fontSize: 20, fontFamily: 'Oxygen'),),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // Mengarahkan kembali ke halaman utama setelah menutup alert
                              Navigator.of(context).pop();
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                return MyHomePage(); // Gantilah dengan halaman utama yang sesuai
                              }));
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: Container(
                  height: 30,
                  width: 100,
                  child: const Text('Confirm Payment', textAlign: TextAlign.center),
                ),
              ),
            ),

            Container(
              height: 50,
              
            ),

          ],
        ),
      ),
      backgroundColor: Colors.white,

    );
  }
}
