import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: Text('create drawer widget tree here'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'appName',
          ),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.accessible),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.accessible))],
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
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                     
                      padding: const EdgeInsets.all(8),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black12), borderRadius: BorderRadius.circular(5)),
                      child: ClipRRect(
                        borderRadius: true ? BorderRadius.circular(8) : BorderRadius.zero ,
                        child:
                         Image.asset(fit: BoxFit.contain,
                          'assets/images/start_app_list_3.png'  'assets/images/start_app_list_4.png'  ),
                        // const Image(fit: BoxFit.contain, image: 'assets/images/start_app_list_3.png')
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
