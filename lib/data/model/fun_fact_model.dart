import 'package:lichviet_modules/domain/entities/fun_fact_entity.dart';

class FunFactModel implements FunFactEntity {
  @override
  int? categoryId;
  @override
  String? content;
  @override
  String? createBy;
  @override
  String? createTime;
  @override
  String? description;
  @override
  int? id;
  @override
  String? imageUrl;
  @override
  int? like;
  @override
  String? metadata;
  @override
  String? modifyBy;
  @override
  String? modifyTime;
  @override
  String? publishDate;
  @override
  int? status;
  @override
  String? title;

  FunFactModel(
      {this.categoryId,
      this.content,
      this.createBy,
      this.createTime,
      this.description,
      this.id,
      this.imageUrl,
      this.like,
      this.metadata,
      this.modifyBy,
      this.modifyTime,
      this.publishDate,
      this.status,
      this.title});

  FunFactModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    content = json['content'];
    createBy = json['create_by'];
    createTime = json['create_time'];
    description = json['description'];
    id = json['id'];
    imageUrl = json['image_url'];
    like = json['like'];
    metadata = json['metadata'];
    modifyBy = json['modify_by'];
    modifyTime = json['modify_time'];
    publishDate = json['publish_date'];
    status = json['status'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['content'] = content;
    data['create_by'] = createBy;
    data['create_time'] = createTime;
    data['description'] = description;
    data['id'] = id;
    data['image_url'] = imageUrl;
    data['like'] = like;
    data['metadata'] = metadata;
    data['modify_by'] = modifyBy;
    data['modify_time'] = modifyTime;
    data['publish_date'] = publishDate;
    data['status'] = status;
    data['title'] = title;
    return data;
  }
}
