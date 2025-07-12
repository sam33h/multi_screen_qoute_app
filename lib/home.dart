import 'package:flutter/material.dart';
import 'package:multi_screen_qoute_app/model.dart';

class Home extends StatelessWidget {
  List<Quote> quote = [
    Quote(
      quote: "Be yourself; everyone else is already taken",
      author: " Oscar Wilde",
    ),
    Quote(
      quote: "Why do we fall?So that we can learn to pick ourselves up",
      author: "Alfred Pennyworth",
    ),
    Quote(
      quote: "With great power comes great responsibility",
      author: "Uncle Ben",
    ),
    Quote(
      quote:
          "Those who do not understand true pain can never understand true peace",
      author: "Pain",
    ),
    Quote(quote: "I alone am the honored one", author: "Satoru Gojo"),
    Quote(
      quote:
          "There's a point at 7,000 RPM... where everything fades. The machine becomes weightless. Just disappears",
      author: "Carrol Shelby",
    ),
    Quote(
      quote: "Being second is to be the first of the ones who lose",
      author: "Ayrton Senna",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        title: Text("Quotes and Author"),
      ),
      body: ListView.builder(
        itemCount: quote.length,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: () {
            Navigator.pushNamed(arguments:quote[index],context, "details");
          },
            child: Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(6),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      child: Text(
                        quote[index].quote,
                        style: TextStyle(color: Colors.white),
                      ),
                      alignment: Alignment.bottomLeft,
                    ),
                    SizedBox(height: 5, width: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        quote[index].author,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
