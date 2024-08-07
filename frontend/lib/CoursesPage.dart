import 'package:flutter/material.dart';

import 'CourseDescriptionPage.dart';
import 'MyHomePage.dart';

class CoursesPage extends StatelessWidget {
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
      'tutorImage': 'assets/images/tutor.png',
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
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        return false;
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Courses That We Offer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    final course = courses[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDescriptionPage(course: course),
                          ),
                        );
                      },
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  course['image']!,
                                  width: double.infinity,
                                  height: 165,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
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
                                  fontSize: 20,
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
                                children: [
                                  Row(
                                    children: [
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
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

