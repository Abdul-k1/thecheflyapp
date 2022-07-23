import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String name;
  final String images;
  final String totalTime;

  RecipeCard({
    required this.name,
    required this.images,
    required this.totalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 290.0,
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffC4C4C4),
                image: DecorationImage(
                  image: NetworkImage(images),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 180.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  wordSpacing: 1.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              totalTime,
              style: TextStyle(color: Color(0xff212121), fontSize: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
