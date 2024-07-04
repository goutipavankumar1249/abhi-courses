import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'image': 'assets/images/course1.png',
      'rating': '4.5',
      'duration': '3 months',
      'title': 'Course 1 Title',
      'description': 'Description of Course 1. This is a brief description.',
      'tutorImage': 'assets/images/tutor.png',
      'tutorName': 'Tutor1',
      'price': 'Rs. 5000',
    },
    {
      'image': 'assets/images/course1.png',
      'rating': '4.0',
      'duration': '2 months',
      'title': 'Course 2 Title',
      'description': 'Description of Course 2. This is a brief description.',
      'tutorImage': 'assets/images/tutor.png',
      'tutorName': 'Tutor 2',
      'price': 'Rs. 4000',
    },
    {
      'image': 'assets/images/course1.png',
      'rating': '4.8',
      'duration': '4 months',
      'title': 'Course 3 Title',
      'description': 'Description of Course 3. This is a brief description.',
      'tutorImage': 'assets/images/tutor.png',
      'tutorName': 'Tutor 3',
      'price': 'Rs. 6000',
    },
    {
      'image': 'assets/images/course1.png',
      'rating': '4.2',
      'duration': '1 month',
      'title': 'Course 4 Title',
      'description': 'Description of Course 4. This is a brief description.',
      'tutorImage':'assets/images/tutor.png',
      'tutorName': 'Tutor 4',
      'price': 'Rs. 3000',
    },
    {
      'image': 'assets/images/course1.png',
      'rating': '4.7',
      'duration': '5 months',
      'title': 'Course 5 Title',
      'description': 'Description of Course 5. This is a brief description.',
      'tutorImage': 'assets/images/tutor.png',
      'tutorName': 'Tutor 5',
      'price': 'Rs. 7000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'On Demand Courses',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 375.0,
                // enlargeCenterPage: true,
              ),
              items: courses.map((course) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        width: 363,
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                course['image']!,
                                width: 334,
                                height: 165,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      index < double.parse(course['rating']!)
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.yellow,
                                    );
                                  }),
                                ),
                                Text(course['duration']!),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              course['title']!,
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              course['description']!,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: AssetImage(course['tutorImage']!),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(course['tutorName']!),
                                  ],
                                ),
                                Text(
                                  course['price']!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Here you can add your contact details and other relevant information about your app.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}