// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBean _$HomeBeanFromJson(Map<String, dynamic> json) {
  return HomeBean(
      json['code'] as int,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      json['msg'] as String);
}

Map<String, dynamic> _$HomeBeanToJson(HomeBean instance) => <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'msg': instance.msg
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(json['reborrowFlag'] as String, json['creditAmount'] as int,
      json['overdueStatus'] as int);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'reborrowFlag': instance.reborrowFlag,
      'creditAmount': instance.creditAmount,
      'overdueStatus': instance.overdueStatus
    };
