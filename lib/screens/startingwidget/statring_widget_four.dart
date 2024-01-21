import 'package:first_project/screens/login/log_in.dart';
import 'package:first_project/screens/mainscreens.dart';
import 'package:flutter/material.dart';

class StartingWidgetFour extends StatelessWidget {
  const StartingWidgetFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF2F7FA),
        body: SafeArea(
            child: Scaffold(
                body: Column(children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(80.0)),
                  child: Image.asset('assets/images/start_app_list_4.png')),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(5.0),
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
                  padding: const EdgeInsets.all(5.0),
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
                  padding: const EdgeInsets.all(5.0),
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
                  padding: const EdgeInsets.all(5.0),
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
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Удобная покупка",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "Оформляйте заказы легко и быстро прямо через приложение, выбирайте размер и вид ткани, не выходя из дома",
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
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 33,
                    backgroundColor: const Color.fromARGB(218, 233, 176, 20),
                    child: Stack(children: [
                      Positioned(
                        right: 3,
                        bottom: 0.0,
                        top: 1.0,
                        left: 0.1,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(218, 233, 176, 20)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const SizedBox(
                    height: 40,
                    width: 220,
                    child: Text(
                      'Начать',
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
        ]))));
  }
}
