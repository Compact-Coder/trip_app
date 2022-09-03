import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Josefin Sans'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/one.jpg',
            title: 'Siargao island, Philippines',
            description:
                'Siargao is an island of nine municipalities in the province of Surigao del Norte. Known as the “Surfing Capital of the Philippines”, Siargao is mainly responsible for introducing surfing to the country. Apart from surfing, Siargao is also open to other activities such as cave explorations and rock climbing.',
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Horseshoe Bend, Page, United States',
            description:
                "HORSESHOE BEND is a horseshoe-shaped incised meander of the Colorado River, located in the town of Page, Arizona, United States. The hike is about . 6 miles one-way to the overlook. The overlook is about a 1,000' drop, looking down onto the Colorado River.",
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Valley of Fire State Park, United States',
            description:
                "Shaded areas with restrooms are located at Atlatl Rock, Seven Sisters, the Cabins, near Mouse's Tank Trailhead and White Domes.Many intriguing hikes are available to visitors. Inquire at the Visitor Center for suggestions on day hikes of varying length and terrai.",
          ),
          makePage(
            page: 4,
            image: 'assets/images/four.jpg',
            title: 'Oia , Greece',
            description:
                "Oia is located 11 km away from Fira and is a pedestrian town. Most of the visitors come here to admire its unique architecture, captains' houses, Blue Domes, cave houses and the sunset. You can see crowds of people here any time of the day, for it's a must to see if you are in Santorini.",
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        page.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '/' + totalPage.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ]),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              )),
                          Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              )),
                          Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              )),
                          Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              )),
                          Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 15,
                              )),
                          Text(
                            '4.0',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            '(2300)',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.9,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
