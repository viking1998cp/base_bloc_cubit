import 'package:lichviet_modules/domain/entities/news_paper_entity.dart';

class NewsPaperModel implements NewsPaperEntity {
  @override
  String content;

  @override
  String createTime;

  @override
  String imageUrl;

  NewsPaperModel(
      {required this.content,
      required this.createTime,
      required this.imageUrl});

  factory NewsPaperModel.fromJson(Map<String, dynamic> json) => NewsPaperModel(
      content: json['content'],
      createTime: json['create_time'],
      imageUrl: json['image_url']);
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['create_time'] = createTime;
    data['image_url'] = imageUrl;
    return data;
  }
}
