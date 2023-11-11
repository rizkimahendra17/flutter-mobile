import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  final String profile;
  const ProfilePage({Key? key, required this.profile}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late String _profile;

  @override
  //kita akan menangkap isi nya
  void initState()
  {
    super.initState();
    _profile = widget.profile;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.30,
                    decoration: BoxDecoration(
                      // color: Colors.grey[400],
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/6d/a4/35/singapore-super-tree.jpg?w=1400&h=-1&s=1'),
                          fit: BoxFit.cover),

                    )),
                if(_profile == 'profile')
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -120 / 2.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'images/icon.jpg'))),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Rizki Mahendra',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Basic Member',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40, // Atur tinggi Container sesuai kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                // Implement your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.payment, color: Colors.white,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Saldo', style: TextStyle(color: Colors.white),)
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40, // Atur tinggi Container sesuai kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                // Implement your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.message, color: Colors.white),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Transaksi', style: TextStyle(color: Colors.white),)
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40, // Atur tinggi Container sesuai kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                // Implement your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.settings, color: Colors.white),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Member', style: TextStyle(color: Colors.white),)
                                ],
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '9.000',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.black,
                        ),
                        Column(
                          children: [
                            Text(
                              '55',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.black,
                        ),
                        Column(
                          children: [
                            Text(
                              'Platinum',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],

        ));

  }
}