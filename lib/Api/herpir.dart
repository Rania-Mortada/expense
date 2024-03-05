import 'package:dio/dio.dart';
import 'package:expense/Api/api.dart';


class ApiConstants{
  static Dio ?dio ;
  static String BASEURL =  "http://148.113.1.230:2060/";
  static getFullHeader(){
    return {
      "compenypath" :CacheHelper.sharedPreferences.getString(CustomerHelper.COMPENYPATH),
      "username" : CacheHelper.getString(CustomerHelper.USER_NAME),
      "user_name" : CacheHelper.getString(CustomerHelper.USER_NAME),
      "userid" : CacheHelper.getString(CustomerHelper.USER_ID) ,
      "fyear" : CacheHelper.getString(CustomerHelper.YEAR),
      "automaticpoststock" : CacheHelper.getBool(CustomerHelper.AUTOMATIC_POIST_STOCK),
      "automaticpostacc" : CacheHelper.getBool(CustomerHelper.AUTOMATIC_POIST_ACC),
      "showpayinmobcash" : CacheHelper.getBool(CustomerHelper.SHOW_PAY_IN_MOB_CASH),
      "actionnumkey" : -1,
      "actionnumber" : 0


    };
  }

  static get(){
    return Dio(
        BaseOptions(
            baseUrl: BASEURL,
            connectTimeout: Duration(seconds: 60*1000), // 60 seconds
            receiveTimeout:  Duration(seconds: 60*1000) // 60 seconds
        )
    );
  }



}