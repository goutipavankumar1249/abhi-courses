import 'Video.dart';

class Module {
  final String id;
  final String title;
  final List<Video> videos;

  Module({
    required this.id,
    required this.title,
    required this.videos,
  });

  factory Module.fromJson(Map<String, dynamic> json) {
    var videosFromJson = json['videosList'] as List;
    List<Video> videosList = videosFromJson.map((i) => Video.fromJson(i)).toList();

    return Module(
      id: json['_id'],
      title: json['title'],
      videos: videosList,
    );
  }
}
