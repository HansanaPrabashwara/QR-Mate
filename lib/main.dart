

import 'package:flutter/material.dart';
import 'package:qrmate/src/home.dart';
import 'package:qrmate/src/qr_reader.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';


void main() {
runApp(const MyApp());
}


class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	debugShowCheckedModeBanner: false,
	title: 'Sliding Clipped NavBar',
	theme: ThemeData(
		canvasColor: const Color.fromARGB(255, 201, 199, 186),
	),
	home: const MyHomePage(),
	);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key}) : super(key: key);

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// page controller instance
late PageController _pageController; 
int selectedIndex = 0;


@override
void initState() {
	super.initState();
	_pageController = PageController(initialPage: selectedIndex);
}

void changePage(int index) {
	setState(() {
	selectedIndex = index;
	});
	_pageController.animateToPage(selectedIndex,
		duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	body: Column(
		children: [
		Expanded(
			child: PageView(
			physics: const NeverScrollableScrollPhysics(),
			controller: _pageController,
			children: _listOfPages,
			),
		),
		],
	),
	// bottomnavigationbar that call the 
	// SlidingClippedNavBar widget
	bottomNavigationBar: SlidingClippedNavBar(
		backgroundColor: Color.fromARGB(255, 0, 0, 0),
		// change the page of the 
		// body by click on tab 
		onButtonPressed: changePage, 
		// size of the icons of the tab
		iconSize: 30,
		activeColor: Color.fromARGB(255, 255, 255, 255),
		// color of tab otherthan
		// of selected tab 
		inactiveColor: const Color.fromARGB(255, 116, 116, 116), 
		// selected tab that point 
		// the index of the tab 
		selectedIndex: selectedIndex,
		// items of the navigation bar
		barItems: <BarItem>[ 
		BarItem(
			icon: Icons.home_outlined,
			title: 'Home',
		),
		BarItem(
			icon: Icons.qr_code_scanner_outlined,
			title: 'Scanner',
		),
		BarItem(
			icon: Icons.list_alt_outlined,
			title: 'History',
		  ),
		  ],
	  ),
	);
}
}

// List of pages
List<Widget> _listOfPages = [

const HomePage(),
const QRViewExample(),
Container(
	alignment: Alignment.center,
	child: const Icon(
	Icons.flutter_dash,
	size: 56,
	color: Colors.green,
	),
),
];
