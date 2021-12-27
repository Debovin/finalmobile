import 'package:flutter/material.dart';

import 'user_card.dart';
import 'user_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/workers.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          ListUsers(title: 'Рекомендуемые', card: [
            UserCard(
                name: "Askar Ibragimov",
                number: "8 707 123 45 67",
                job: "Game developer",
                url: 'assets/images/pic9.jpg',
                albumUrl: 'assets/images/pic9.jpg'),
            UserCard(
                name: "Kai Havertz",
                number: "8 707 765 43 21",
                job: "Аналитик Python",
                url: 'assets/images/pic1.jpg',
                albumUrl: 'assets/images/pic1.jpg'),
            UserCard(
              name: "Andreas Christensen",
              number: "8 707 134 67 98",
              job: "Flutter разработчик",
              url: 'assets/images/pic2.jpg',
              albumUrl: 'assets/images/pic2.jpg',
            ),
            UserCard(
                name: "Erbolat Bekenov",
                number: "8 706 789 16 34",
                job: "Front-end разработчик",
                url: 'assets/images/pic3.jpeg',
                albumUrl: 'assets/images/pic3.jpeg'),
            UserCard(
                name: "Madina Elubaeva",
                number: "8 701 951 75 31",
                job: "Продакт менеджер",
                url: 'assets/images/pic4.jpg',
                albumUrl: 'assets/images/pic4.jpg'),
          ]),
          Divider(),
          ListUsers(title: 'Лучшее', card: [
            UserCard(
                name: "Benjamin Mendy",
                number: "8 701 999 15 35",
                job: "Flutter дизайнер",
                url: 'assets/images/pic10.jpg',
                albumUrl: 'assets/images/pic10.jpg'),
            UserCard(
                name: "Roman Abramovich",
                number: "8 775 486 35 78",
                job: "Продакт менеджер",
                url: 'assets/images/pic23.jpg',
                albumUrl: 'assets/images/pic23.jpg'),
            UserCard(
              name: "Arthur Morgan",
              number: "8 747 248 63 15",
              job: "Go разработчик",
              url: 'assets/images/pic33.jpg',
              albumUrl: 'assets/images/pic33.jpg',
            ),
            UserCard(
                name: "Zhanibek Rakhmanov",
                number: "8 702 258 22 32",
                job: "Python разработчик",
                url: 'assets/images/pic36.jpg',
                albumUrl: 'assets/images/pic36.jpg'),
            UserCard(
                name: "Nursultan Bek",
                number: "8 771 147 14 14",
                job: "",
                url: 'assets/images/pic7.jpg',
                albumUrl: 'assets/images/pic7.jpg'),
          ]),
          Divider(),
          ListUsers(title: 'Новые', card: [
            UserCard(
                name: "Artem Ivanov",
                number: "8 708 888 98 87",
                job: "Full-stack разработчик",
                url: 'assets/images/pic14.jpg',
                albumUrl: 'assets/images/pic14.jpg'),
            UserCard(
                name: "Victoria Backham",
                number: "8 706 464 47 98",
                job: "1C программист",
                url: 'assets/images/pic19.jpg',
                albumUrl: 'assets/images/pic19.jpg'),
            UserCard(
              name: "Eva Carneiro",
              number: "8 702 456 95 95",
              job: "Android разработчик",
              url: 'assets/images/pic15.jpg',
              albumUrl: 'assets/images/pic15.jpg',
            ),
            UserCard(
                name: "Dmytro Vasylenko",
                number: "8 706 111 32 54",
                job: "Back-end разработчик",
                url: 'assets/images/pic21.jpg',
                albumUrl: 'assets/images/pic21.jpg'),
            UserCard(
                name: "Aigerim Kalaubaeva",
                number: "8 705 477 95 35",
                job: "C++ разработчик",
                url: 'assets/images/pic18.jpg',
                albumUrl: 'assets/images/pic18.jpg'),
          ]),
        ],
      ),
    ));
  }
}
