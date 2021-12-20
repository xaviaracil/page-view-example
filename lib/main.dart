import 'package:flutter/material.dart';

///
/// In this example we display a 2 tabs with a PageView in each tab.
/// First tab scrolls pages horizontally, whether the second one scrolls them vertically

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Since each PageView requires a PageController
    /// we have to create 2 of them, one for each
    final PageController horizontalController = PageController();
    final PageController verticalController = PageController();

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [Tab(text: "Horizontal"), Tab(text: "Vertical")],
            ),
          ),
          body: TabBarView(
            children: [
              /// First tab: Horizontal Page View
              PageView(
                controller: horizontalController,
                children: const [
                  Center(
                    child: Text('1', style: TextStyle(fontSize: 56)),
                  ),
                  Center(
                    child: Text('2', style: TextStyle(fontSize: 56)),
                  ),
                  Center(
                    child: Text('3', style: TextStyle(fontSize: 56)),
                  )
                ],
              ),

              /// First tab: Vertical Page View
              PageView(
                controller: verticalController,
                scrollDirection: Axis.vertical,
                children: const [
                  Center(
                    child: Text('1', style: TextStyle(fontSize: 56)),
                  ),
                  Center(
                    child: Text('2', style: TextStyle(fontSize: 56)),
                  ),
                  Center(
                    child: Text('3', style: TextStyle(fontSize: 56)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
