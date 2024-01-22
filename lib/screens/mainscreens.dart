import 'dart:async';

import 'package:first_project/models/iconsfloutingnav.dart';
import 'package:first_project/screens/login/log_in.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

final List<String> imagePaths = [
  "assets/images/start_app_list_1.png",
  "assets/images/start_app_list_2.png",
  "assets/images/start_app_list_3.png",
  "assets/images/start_app_list_4.png"
];

int selctedNavIndex = 0;

late List<Widget> _page;

int _activePage = 0;

final PageController _pageController = PageController(initialPage: 0);

Timer? _timer;

class _MainScreensState extends State<MainScreens> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.page == imagePaths.length - 1) {
        _pageController.animateToPage(0,
            duration: Duration(microseconds: 300), curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: Duration(microseconds: 300), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _page = List.generate(
        imagePaths.length,
        (index) => ImagePlaceholder(
              imagePath: imagePaths[index],
            ));
    startTimer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(
          child: Text(' ТУТ ПОКА НЕЧЕГО НЕТУ  ;) PORFA'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Nur Yupek',
          ),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.list),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                icon: Icon(Icons.account_circle))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, count) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                      );
                    }),
              ),
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          _activePage = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return _page[index];
                      },
                      itemCount: imagePaths.length,
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List<Widget>.generate(
                                _page.length,
                                (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: InkWell(
                                      onTap: () {
                                        _pageController.animateToPage(index,
                                            duration: const Duration(
                                                microseconds: 200),
                                            curve: Curves.easeIn);
                                      },
                                      child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor: _activePage == index
                                              ? Colors.yellow
                                              : Colors.grey),
                                    )))),
                      ))
                ],
              ),
              const Row(
                children: [
                  Text("Горячее предложение           ",
                      style: (TextStyle(fontSize: 20))),
                  Text("Показать все", style: (TextStyle(fontSize: 14)))
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  height: 240,
                  width: 150,
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: Image.asset(
                              'assets/images/image_main_conteiner_1.png',
                              fit: BoxFit.cover),
                        ),
                      )),
                ),
                SizedBox(
                  height: 240,
                  width: 150,
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: Image.asset(
                              'assets/images/image_main_conteiner_2.png',
                              fit: BoxFit.cover),
                        ),
                      )),
                ),
              ])
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 46, 3).withOpacity(0.8),
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 17, 46, 3).withOpacity(
                        0.3,
                      ),
                      offset: const Offset(0, 20),
                      blurRadius: 20)
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    bottomNavIcons.length,
                    (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selctedNavIndex = index;
                          });
                        },
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          AnimatedBar(isActive: selctedNavIndex == index),
                          SizedBox(
                            height: 36,
                            width: 36,
                            child: Image.asset(bottomNavIcons[index].path),
                          )
                        ])))),
          ),
        ));
  }
}

class ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(imagePath!, fit: BoxFit.cover)));
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 200),
      margin: EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
