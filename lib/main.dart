import 'package:flutter/material.dart';
import 'practice.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _selectedIndex=0;
  void _tapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Flashcards",
              style: TextStyle(
                  fontSize: 35)),
          toolbarHeight: 70,
          elevation: 5,
        ),
        body: GridView.builder(
          itemCount: 5,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Practice(title: 'SecondPage');
                          }
                          )
                      );
                    },
                    child: Container(
                        padding:  EdgeInsets.fromLTRB(20,30,20,0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 7.0, 7.0),
                              child: Text(
                                'Text',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 7.0, 7.0),
                              child: Text(
                                'Answer',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 0.0),
                                  child: IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.white, size: 30.0),
                                    tooltip: 'Delete',
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Cards',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitbit),
              label: 'Practice',
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _tapped,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            setState(() {
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}