import 'package:flutter/material.dart';
import 'package:frontend/ActiveCourseDescriptionPage.dart';

class ActiveCoursesPage extends StatelessWidget {
  final List<Map<String, dynamic>> activeCourses = [
    {
      'image': 'assets/images/course1.png',
      'rating': '4.5',
      'duration': '3 months',
      'title': 'Active Course 1',
      'description': 'Description of Active Course 1. This is a brief description.',
      'tutorImage': 'assets/images/tutor.png',
      'tutorName': 'Tutor1',
      'price': 'Rs. 5000',
      'modules': [
        {
          'title': 'Module 1',
          'videos': [
            'Video 1',
            'Video 2',
            'Video 3',
          ],
        },
        {
          'title': 'Module 2',
          'videos': [
            'Video 1',
            'Video 2',
          ],
        },
      ],
    },
    {
      'image': 'assets/images/course1.png',
      'rating': '4.0',
      'duration': '2 months',
      'title': 'Active Course 2',
      'description': 'Description of Active Course 2. This is a brief description.',
      'tutorImage': 'assets/images/tutor.png',
      'tutorName': 'Tutor 2',
      'price': 'Rs. 4000',
      'modules': [
        {
          'title': 'Module 1',
          'videos': [
            'Video 1',
            'Video 2',
            'Video 3',
            'Video 4',
          ],
        },
        {
          'title': 'Module 2',
          'videos': [
            'Video 1',
            'Video 2',
          ],
        },
        {
          'title': 'Module 3',
          'videos': [
            'Video 1',
            'Video 2',
            'Video 3',
            'Video 4',
            'Video 5',
          ],
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Active Courses',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: activeCourses.length,
                itemBuilder: (context, index) {
                  final course = activeCourses[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ActiveCourseDescriptionPage(course: course),
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
                            SizedBox(height: 16.0),

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
    );
  }
}
