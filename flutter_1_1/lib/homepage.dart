import 'package:flutter/material.dart';
import 'package:flutter_1_1/detay.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              )
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "Monstserrat",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.camera_alt),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  headerHikaye(
                      imgPath: "assets/model1.jpeg",
                      logoPath: "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  headerHikaye(
                      imgPath: "assets/model2.jpeg",
                      logoPath: "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  headerHikaye(
                      imgPath: "assets/model3.jpeg",
                      logoPath: "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  headerHikaye(
                      imgPath: "assets/model1.jpeg",
                      logoPath: "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  headerHikaye(
                      imgPath: "assets/model2.jpeg",
                      logoPath: "assets/chanellogo.jpg"),
                  const SizedBox(width: 20),
                  headerHikaye(
                      imgPath: "assets/model3.jpeg",
                      logoPath: "assets/chanellogo.jpg"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue,
              child: SizedBox(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                image: AssetImage("assets/model1.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                      fontFamily: "Monserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "34 Min Ago",
                                  style: TextStyle(
                                      fontFamily: "Monserrat",
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "This offical website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to firends.",
                        style: TextStyle(
                            fontFamily: "Monserrat",
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Detay(
                                        imgPath: "assets/modelgrid1.jpeg");
                                  },
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",
                              child: Container(
                                height: 205,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Detay(
                                            imgPath: "assets/modelgrid2.jpeg");
                                      },
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Detay(
                                            imgPath: "assets/modelgrid3.jpeg");
                                      },
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid3.jpeg",
                                  child: Container(
                                    height: 100,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid3.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                "# Louis vuitton",
                                style: TextStyle(
                                    fontFamily: "Monserrat",
                                    fontSize: 12,
                                    color: Colors.brown),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                "# Chloe",
                                style: TextStyle(
                                    fontFamily: "Monserrat",
                                    fontSize: 12,
                                    color: Colors.brown),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      const Divider(),
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.4),
                            size: 30,
                          ),
                          const SizedBox(width: 3),
                          const Text(
                            "1.7k",
                            style: TextStyle(
                                fontFamily: "Monserrat",
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.4),
                            size: 30,
                          ),
                          const SizedBox(width: 3),
                          const Text(
                            "325",
                            style: TextStyle(
                                fontFamily: "Monserrat",
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 210,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "2.3k",
                                  style: TextStyle(
                                      fontFamily: "Monserrat",
                                      fontSize: 16,
                                      color: Colors.grey),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget headerHikaye({required String imgPath, required String logoPath}) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(fontFamily: "Monstserrat", color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
