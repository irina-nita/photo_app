// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnsplashPhoto$ _$$UnsplashPhoto$FromJson(Map<String, dynamic> json) => _$UnsplashPhoto$(
      description: json['description'] as String? ?? 'No description.',
      id: json['id'] as int,
      urls: Url.fromJson(json['urls'] as Map<String, dynamic>),
      likes: json['likes'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnsplashPhoto$ToJson(_$UnsplashPhoto$ instance) => <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'urls': instance.urls,
      'likes': instance.likes,
      'user': instance.user,
    };

_$Url$ _$$Url$FromJson(Map<String, dynamic> json) => _$Url$(
      raw: json['raw'] as String,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String,
    );

Map<String, dynamic> _$$Url$ToJson(_$Url$ instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };

_$User$ _$$User$FromJson(Map<String, dynamic> json) => _$User$(
      likes: json['likes'],
      username: json['username'] as String,
      name: json['name'] as String,
      profileImage: ProfileImage.fromJson(json['profile_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$User$ToJson(_$User$ instance) => <String, dynamic>{
      'likes': instance.likes,
      'username': instance.username,
      'name': instance.name,
      'profile_image': instance.profileImage,
    };

_$ProfileImage$ _$$ProfileImage$FromJson(Map<String, dynamic> json) => _$ProfileImage$(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$ProfileImage$ToJson(_$ProfileImage$ instance) => <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      photos:
          // ignore: always_specify_types
          (json['photos'] as List<dynamic>?)?.map((e) => UnsplashPhoto.fromJson(e as Map<String, dynamic>)).toList() ??
              const <UnsplashPhoto>[],
      isLoading: json['isLoading'] as bool? ?? false,
      isSearching: json['isSearching'] as bool? ?? false,
      submittedQuery: json['submittedQuery'] as bool? ?? false,
      selectedPhoto:
          json['selectedPhoto'] == null ? null : UnsplashPhoto.fromJson(json['selectedPhoto'] as Map<String, dynamic>),
      query: json['query'] as String? ?? 'travel',
      page: json['page'] as int? ?? 1,
      // ignore: always_specify_types
      liked: (json['liked'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const <int>[],
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'photos': instance.photos,
      'isLoading': instance.isLoading,
      'isSearching': instance.isSearching,
      'submittedQuery': instance.submittedQuery,
      'selectedPhoto': instance.selectedPhoto,
      'query': instance.query,
      'page': instance.page,
      'liked': instance.liked,
    };
