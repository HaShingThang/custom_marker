import 'package:flutter/material.dart';

class LocationMarker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172,
      height: 172,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, // Set your desired background color here
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              'pin.png',
              width: 144,
              height: 144,
              color: Colors.pink[400],
            ),
          ),
          // Center BoxShap and Center Circular img
          Positioned(
            top: 18,
            child: Container(
              width: 106,
              height: 106,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // CrownBoxShape
          Positioned(
            top: 0,
            right: 30,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Image.asset(
                  'crown.png',
                  width: 40,
                  height: 40,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
