import 'package:flutter/material.dart';

class Carditem extends StatelessWidget {
  final String img;
  final String text;

  Carditem(this.img, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(
          children: [
            Image.asset(
              img,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 43,
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text(
                    text,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}