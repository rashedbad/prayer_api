import 'data.dart';

class Prayer {
  int? code;
  String? status;
  Dataa? data;

  Prayer({this.code, this.status, this.data});

  factory Prayer.fromJson(Map<String, dynamic> json) => Prayer(
        code: json['code'] as int?,
        status: json['status'] as String?,
        data: json['data'] == null
            ? null
            : Dataa.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'status': status,
        'data': data?.toJson(),
      };
}
