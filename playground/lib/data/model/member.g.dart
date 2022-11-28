// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Member _$MemberFromJson(Map<String, dynamic> json) => Member(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      image: json['image'] as String,
      school: json['school'] as String,
    );

Map<String, dynamic> _$MemberToJson(Member instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'image': instance.image,
      'school': instance.school,
    };
