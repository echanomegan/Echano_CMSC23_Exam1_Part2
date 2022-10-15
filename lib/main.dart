import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WacDough',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WacDough'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: [
        Image.asset(
          'images/burger.jpg',
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'images/burger.jpg',
              ),
            ),
            Expanded(
              child: Image.asset(
                'images/burger.jpg',
              ),
            ),
            Expanded(
              child: Image.asset(
                'images/burger.jpg',
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Big Mhak',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 20)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text('10k (4.5 Rates)'),
                ),
                Text('\$20.00'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                '100% beef burger with a taste like no other. The mouthwatering perfection starts with two 100% pure all beef patties and Big Mac sauce sandwiched between a sesame seed bun. It\'s topped off with pickeles, crisp shredded lettuce, finely chopped onion, and a slice of American cheese.',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Padding(padding: const EdgeInsets.only(bottom: 10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.red),
                        Text('Juicy'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.red),
                        Text('Affordable'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.red),
                        Text('Fresh'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.red),
                        Text('Free Shipping'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: IntrinsicHeight(
                  child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.messenger_outline_rounded)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  OutlinedButton(onPressed: () {}, child: Text('1')),
                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: null,
                      child: Text(
                        'Order Now',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              )),
            )
          ],
        ),
      ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Header"),
            ),
            ListTile(
              title: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
