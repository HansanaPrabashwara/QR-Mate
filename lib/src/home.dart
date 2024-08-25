import 'package:flutter/material.dart';
import 'package:qrmate/src/bottom_appbar.dart';
import 'package:qrmate/src/qr_reader.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 40, 30, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "QR-MATE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          
                          fontWeight: FontWeight.bold
                          
                        ),
                        
                      )
                    ],
                  ),
                  GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const QRViewExample())),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsbZ_s0z_lXiphFStlXnJgwqRJfLyOcEEKDg&s"),
                    radius: 20,
                  ),       
                ),
                  
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Scans",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                        onPressed: null,  //:TODO  - put the ride page
                        icon: Icon(Icons.arrow_forward, color: Colors.white,)
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10), 
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "QR Code",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    )
                  )
                ]
              ),

              const SizedBox(height: 20),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Generated QR Codes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                        onPressed: null,  //:TODO  - put the ride page
                        icon: Icon(Icons.arrow_forward, color: Colors.white,)
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10), 
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "QR Code",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  )
                ]
              ),
            ],
          ),
        )
      ),
    );
  }
}