import 'package:newapi/ModeApi/Articles.dart';

class JsonResponse{
  String? status;
  int? totalResults;
  List<Articles> articles;

   JsonResponse.fromJson(dynamic json) :
      status= json['status'],
      totalResults= json['totalResults'],
      articles= (json['articles'] as List).map((i) => Articles.fromJson(i)).toList();
  
}