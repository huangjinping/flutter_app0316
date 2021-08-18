import 'package:json_annotation/json_annotation.dart';

part 'home_bean.g.dart';


@JsonSerializable()
class HomeBean extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  Data data;

  @JsonKey(name: 'msg')
  String msg;

  HomeBean(this.code,this.data,this.msg,);

  factory HomeBean.fromJson(Map<String, dynamic> srcJson) => _$HomeBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HomeBeanToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'reborrowFlag')
  String reborrowFlag;

  @JsonKey(name: 'creditAmount')
  int creditAmount;

  @JsonKey(name: 'overdueStatus')
  int overdueStatus;

  Data(this.reborrowFlag,this.creditAmount,this.overdueStatus,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


