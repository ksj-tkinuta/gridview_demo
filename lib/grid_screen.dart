import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> texts = [
      'box1',
      'box2',
      'box3',
      'box4',
      'box5',
      'box6',
      'box7',
      'box8',
      'box9',
      'box10',
      'box11',
      'box12',
    ];
    return Center(
      child: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: texts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue.shade100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXqhfn8TP4mwxIGRjN-P_G3nsZW1QYz5RwzQ&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      // This ensures that Text takes remaining space at the bottom

                      child: Container(
                        alignment: Alignment.bottomCenter,
                        // Align text to the bottom
                        child: Text(
                          texts[index],
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                          textAlign: TextAlign
                              .center, // Align text center horizontally
                        ),
                      ),
                    )
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
