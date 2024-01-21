import 'package:first_project/screens/mainscreens.dart';
import 'package:first_project/screens/startingwidget/starting_widget_two.dart';
import 'package:flutter/material.dart';

class StartImage extends StatefulWidget {
  const StartImage({super.key});

  @override
  State<StartImage> createState() => _StartImageState();
}

class _StartImageState extends State<StartImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(100.0)),
              child: Image.asset('assets/images/start_app_list_1.png')),
          Positioned(
              child: TextButton(
                  onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreens(),
                  ),
                );},
                  child: const Text(
                    "Пропустить",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 35)),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 10,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                        color: const Color.fromARGB(218, 233, 176, 20),
                        width: 2.0)),
                child: Container(
                  color: const Color.fromARGB(218, 233, 176, 20),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 10,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                        color: const Color.fromARGB(218, 188, 187, 183),
                        width: 2.0)),
                child: Container(
                  color: const Color.fromARGB(218, 188, 187, 183),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 10,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                        color: const Color.fromARGB(218, 188, 187, 183),
                        width: 2.0)),
                child: Container(
                  color: const Color.fromARGB(218, 188, 187, 183),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 10,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                        color: const Color.fromARGB(218, 188, 187, 183),
                        width: 2.0)),
                child: Container(
                  color: const Color.fromARGB(218, 188, 187, 183),
                ),
              ))
        ],
      ),
      const Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          "Разнообразие цветов и фактур",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(2.0),
        child: Text(
          "От классических оттенков до последних трендов моды - y нас есть все, чтобы воплотить ваши творческие идеи.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
      const Expanded(
        flex: 12,
        child: SizedBox(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(218, 233, 176, 20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartingWidgetTwo(),
                  ),
                );
              },
              child: const SizedBox(
                height: 40,
                width: 250,
                child: Text(
                  'Далее',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ]));
  }
}
