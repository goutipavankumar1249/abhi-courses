import 'package:flutter/material.dart';

class ExploreActiveCoursePage extends StatelessWidget {
  final String courseTitle;
  final List<String> modules;

  ExploreActiveCoursePage({
    required this.courseTitle,
    required this.modules,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Add action for menu button
          },
        ),
        title: Text(courseTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: modules.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {
                  // Action to display module videos
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ModuleDetailPage(
                        moduleName: modules[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 353,
                  height: 65,
                  alignment: Alignment.center,
                  child: Text(
                    modules[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ModuleDetailPage extends StatelessWidget {
  final String moduleName;

  ModuleDetailPage({required this.moduleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moduleName),
      ),
      body: Center(
        child: Text('Videos for $moduleName will be displayed here'),
      ),
    );
  }
}
