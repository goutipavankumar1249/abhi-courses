/*
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ActiveCourseDescriptionPage extends StatefulWidget {
  final Map<String, dynamic> course;

  ActiveCourseDescriptionPage({required this.course});

  @override
  _ActiveCourseDescriptionPageState createState() => _ActiveCourseDescriptionPageState();
}

class _ActiveCourseDescriptionPageState extends State<ActiveCourseDescriptionPage> {
  late VideoPlayerController _controller;
  int _currentModule = 0;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo(widget.course['modules'][_currentModule]['videos'][0]['url']);
  }

  void _initializeVideo(String videoUrl) {
    _controller = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setState(() {}); // Ensure widget rebuilds when initialized
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playVideo(String videoUrl) {
    _controller.pause();
    _initializeVideo(videoUrl);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.course['title']),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Course Title
            Text(
              widget.course['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),

            // Section 2: Video Player and Description
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : Container(
              height: 200,
              color: Colors.black12,
              child: Center(child: CircularProgressIndicator()),
            ),
            SizedBox(height: 8.0),
            Text(
              widget.course['modules'][_currentModule]['videos'][0]['description'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),

            // Section 3: Modules
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.course['modules'].length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'Module ${index + 1}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    initiallyExpanded: index == _currentModule,
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        _isExpanded = expanded;
                        if (expanded) _currentModule = index;
                      });
                    },
                    children: widget.course['modules'][index]['videos']
                        .map<Widget>((video) => ListTile(
                      title: Text(video['title']),
                      onTap: () => _playVideo(video['url']),
                    ))
                        .toList(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ActiveCourseDescriptionPage extends StatefulWidget {
  final Map<String, dynamic> course;

  ActiveCourseDescriptionPage({required this.course});

  @override
  _ActiveCourseDescriptionPageState createState() =>
      _ActiveCourseDescriptionPageState();
}

class _ActiveCourseDescriptionPageState
    extends State<ActiveCourseDescriptionPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/video.mp4')
      ..initialize().then((_) {
        setState(() {}); // Ensure widget rebuilds when initialized
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.course['title']),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle drawer open
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.course['title'],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : Container(
              height: 200,
              color: Colors.black12,
              child: Center(child: CircularProgressIndicator()),
            ),
            SizedBox(height: 16.0),
            Text(
              widget.course['description'],
              style: TextStyle(fontSize: 16),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.course['tutorImage']),
                ),
                SizedBox(width: 8.0),
                Text(widget.course['tutorName']),
                Spacer(),
                Text(
                  'Rating: ${widget.course['rating']}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Course Curriculum',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.course['modules'].length,
              itemBuilder: (context, moduleIndex) {
                return ExpansionTile(
                  title: Text(
                    'Module ${moduleIndex + 1}: ${widget.course['modules'][moduleIndex]['moduleTitle']}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  children: List.generate(
                    widget.course['modules'][moduleIndex]['videos'].length,
                        (videoIndex) {
                      return ListTile(
                        title: Text(
                          'Video ${videoIndex + 1}: ${widget.course['modules'][moduleIndex]['videos'][videoIndex]}',
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
