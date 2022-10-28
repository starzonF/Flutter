import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Detay extends StatelessWidget {
  final String imgPath;
  const Detay({required this.imgPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/dress.jpg"),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontFamily: "Monserrat",
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Louis vuitton",
                            style: TextStyle(
                                fontFamily: "Monserrat",
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.of(context).size.width - 180,
                            child: const Text(
                              "One button V-neck sling long-sleeved waist female stitching dress",
                              style: TextStyle(
                                  fontFamily: "Monserrat",
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "\$6500",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 22,
                              color: Colors.grey),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.brown,
                          onPressed: () {},
                          child: const Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
