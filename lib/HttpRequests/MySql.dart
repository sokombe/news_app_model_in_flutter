
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:newapi/Functions.dart/Customs_functions.dart';
import 'dart:convert' as convert;
import 'package:newapi/ModeApi/JsonModel.dart';

dynamic MY_NULL;
String API_KEY = "34123614cde84413a1b0af3451082009";

class Api {

 static Future<JsonResponse> getAllNews(context) async {

   Map<String, String> headers = {
    'Content-Type': 'application/json;charset=UTF-8',
    'Charset': 'utf-8'
};

 var header2 = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
     };
      
      //////////////////////////Url//////////////////////////////////////
      var url = Uri.https('newsapi.org','/v2/top-headlines?country=us&apiKey='+API_KEY);
      //////////////////////////Url//////////////////////////////////////
      var urldio ='https://newsapi.org/v2/top-headlines?country=us&apiKey=$API_KEY';

      ////////////////////// header //////////////////////////////////

      Response? response;
      var dio = Dio();
      try {

        response= await dio.get(urldio.toString(),options: Options(headers: header2));

        //response = await http.get(url,
           // headers: header2
      //  );
      } catch (e) {
        snackshow('${convert.jsonDecode(response!.data.toString())['status']}', context);
      }
      /////////////////////// body //////////////////////////////////////
      if (response.data.isEmpty) {
        return MY_NULL;
      }
      if (response.statusCode == 200) {
       JsonResponse messageRetourned = JsonResponse.fromJson(response.data);
        return messageRetourned;
      } else {
        
    //show snackbar
        snackshow('${convert.jsonDecode(response.data)['status']}', context);

        return MY_NULL;
      }
   
  }


}