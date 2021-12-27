import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'album.dart';

class InfoPage extends StatelessWidget {
  final String? name;
  final String? number;
  final String? job;
  final String? url;
  final String? albumUrl;
  InfoPage({this.name, this.number, this.job, this.url, this.albumUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(children: [
          Stack(
            children: [
              Container(
                width: 425,
                height: 330,
              ),
              Container(
                width: 425,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/map.jpg'),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: 180,
                child: Container(
                  width: 425,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(170, 50, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name!,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(number!,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          job!,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(url!), fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 8,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.blue[900],
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'My Album',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blue[900],
                            ),
                          ),
                          SizedBox(width: 230),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 125,
                      child: ListView(
                        padding: EdgeInsets.fromLTRB(3, 15, 10, 10),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          AlbumCard(albumUrl: albumUrl),
                          AlbumCard(albumUrl: albumUrl),
                          AlbumCard(albumUrl: albumUrl),
                          AlbumCard(albumUrl: albumUrl),
                          AlbumCard(albumUrl: albumUrl)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                      child: Row(children: [
                        Text(
                          'Voting',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.blue[900],
                          ),
                        ),
                      ]),
                    ),
                    RatingBar.builder(
                      unratedColor: Colors.grey,
                      itemSize: 30,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.blue[900],
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 85,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(
                              Icons.check_circle,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Vote',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    )
                  ])),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(2, 0, 5, 5),
                                child: IconButton(
                                  onPressed: () {
                                    print('Facebook');
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(2, 0, 3, 5),
                                child: IconButton(
                                  onPressed: () {
                                    print('Instagram');
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(2, 0, 5, 5),
                                child: IconButton(
                                  onPressed: () {
                                    print('Snapchat');
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.snapchat,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 5, 5),
                                child: IconButton(
                                  onPressed: () {
                                    print('Tiktok');
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.tiktok,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )
        ])),
      ),
    );
  }
}
