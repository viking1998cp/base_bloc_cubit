import 'package:lichviet_modules/domain/entities/favorite_video_entity.dart';

class FavoriteVideoModel implements FavoriteVideoEntity {
  @override
  String? categoryId;
  @override
  String? createBy;
  @override
  String? createTime;
  @override
  String? description;
  @override
  int? id;
  @override
  String? imgThumb;
  @override
  bool? isFirst;
  @override
  String? metadata;
  @override
  String? modifyBy;
  @override
  String? modifyTime;
  @override
  int? status;
  @override
  String? title;
  @override
  int? type;
  @override
  String? videoLink;

  FavoriteVideoModel(
      {this.categoryId,
      this.createBy,
      this.createTime,
      this.description,
      this.id,
      this.imgThumb,
      this.isFirst,
      this.metadata,
      this.modifyBy,
      this.modifyTime,
      this.status,
      this.title,
      this.type,
      this.videoLink});

  FavoriteVideoModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    createBy = json['create_by'];
    createTime = json['create_time'];
    description = json['description'];
    id = json['id'];
    imgThumb = json['img_thumb'];
    isFirst = json['isFirst'];
    metadata = json['metadata'];
    modifyBy = json['modify_by'];
    modifyTime = json['modify_time'];
    status = json['status'];
    title = json['title'];
    type = json['type'];
    videoLink = json['video_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['create_by'] = createBy;
    data['create_time'] = createTime;
    data['description'] = description;
    data['id'] = id;
    data['img_thumb'] = imgThumb;
    data['isFirst'] = isFirst;
    data['metadata'] = metadata;
    data['modify_by'] = modifyBy;
    data['modify_time'] = modifyTime;
    data['status'] = status;
    data['title'] = title;
    data['type'] = type;
    data['video_link'] = videoLink;
    return data;
  }
}
