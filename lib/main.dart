import 'package:flutter/material.dart';
import 'package:flutter_video/views/screens/car.dart';
import 'package:flutter_video/views/screens/coding.dart';
import 'package:flutter_video/views/screens/nature.dart';
import 'package:flutter_video/views/screens/sport.dart';
import 'package:flutter_video/views/screens/sunset.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'nature': (context) => const Nature(),
        'sport': (context) => const Sport(),
        'car': (context) => const Car(),
        'coding': (context) => const Coding(),
        'sunset': (context) => const Sunset(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> myList = [
    {
      'link': 'https://tse4.mm.bing.net/th?id=OIP.PYipJ_hSncugM2SwnZitvgHaEK&pid=Api&P=0',
      'title': 'Nature',
    },
    {
      'link': 'https://tse2.mm.bing.net/th?id=OIP.-b0mS-q3zE0JVPpA1WA2VAHaEO&pid=Api&P=0',
      'title': 'Sports',
    },
    {
      'link': 'https://static0.hotcarsimages.com/wordpress/wp-content/uploads/2020/05/feature-image-cheap-turbo-cars.jpg',
      'title': 'Cars',
    },
    {
      'link':
          'https://wallup.net/wp-content/uploads/2016/07/20/33246-JavaScript-minified-computer-code-CSS-syntax_highlighting-HTML-minimalism.jpg',
      'title': 'Coding',
    },
    {
      'link': 'https://jooinn.com/images/sunset-532.png',
      'title': 'Sunset',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Player"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisExtent: 240),
          children: myList
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    setState(() {
                      if(myList.indexOf(e)==0){
                        Navigator.pushNamed(context, 'nature');
                      }
                      else if(myList.indexOf(e)==1){
                        Navigator.pushNamed(context, 'sport');
                      }
                      else if(myList.indexOf(e)==2){
                        Navigator.pushNamed(context, 'car');
                      }
                      else if(myList.indexOf(e)==3){
                        Navigator.pushNamed(context, 'coding');
                      }
                      else if(myList.indexOf(e)==4){
                        Navigator.pushNamed(context, 'sunset');
                      }
                    });
                  },
                  child: Container(
                    height: 199,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 240,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Image.network(
                            e['link'],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            e['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
