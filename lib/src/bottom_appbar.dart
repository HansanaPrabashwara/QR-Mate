import 'package:flutter/material.dart';
import 'package:qrmate/src/home.dart';
import 'package:qrmate/src/qr_reader.dart';

class AppBarBottom extends StatelessWidget {
  const AppBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.qr_code_scanner_rounded),
              onPressed: () {
                // Handle home icon press
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.list_alt_rounded),
              onPressed: () {
                // Handle search icon press
                Navigator.push(context, MaterialPageRoute(builder: (context) => const QRViewExample()));
              },
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {
                // Handle settings icon press
              },
              color: Colors.white,
            ),
          ],
        ),
      );

  }

}
