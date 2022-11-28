import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable()
class Member {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'nickname')
  final String nickname;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'school')
  final String school;

  Member({
    required this.id,
    required this.nickname,
    required this.image,
    required this.school,
  });

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
  Map<String, dynamic> toJson() => _$MemberToJson(this);
  @override
  String toString() => 'Member: ${toJson()}';
}
