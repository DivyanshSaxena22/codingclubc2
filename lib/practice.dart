import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text("Flashcards", style: TextStyle(
              fontSize: 30)
          ),
          toolbarHeight: 60,
          toolbarOpacity: 1,

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
          ),
          elevation: 5,

        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: SizedBox(
                height: 300,
                width: 800,
                child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                          child: Text(
                            'Card 1',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 69,
                          width: 900,
                        ),
                        Text(
                          'TITLE',
                          style: TextStyle(color: Colors.white, fontSize: 60),
                        ),
                      ],
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 45,
              width: double.infinity,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {  },
                  child: const Text(
                    'Show Answer',
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ),
                IconButton(
                    icon: const Icon(Icons.navigate_next, color: Colors.blue, size: 60.0),
                    onPressed: () {
                    }
                ),
              ],
            )
          ],
        )
    );
  }
}