// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnsplashPhoto$ _$$UnsplashPhoto$FromJson(Map<String, dynamic> json) => _$UnsplashPhoto$(
      description: json['description'] as String? ?? 'No description.',
      urls: Map<String, String>.from(json['urls'] as Map<String, String>),
      likes: json['likes'] as int,
      user: json['user'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$UnsplashPhoto$ToJson(_$UnsplashPhoto$ instance) => <String, dynamic>{
      'description': instance.description,
      'urls': instance.urls,
      'likes': instance.likes,
      'user': instance.user,
    };
