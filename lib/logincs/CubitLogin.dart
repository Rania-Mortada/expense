import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:expense/Api/api.dart';
import 'package:expense/logincs/LoginState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Api/herpir.dart';
import 'ModeilLogin.dart';
String ? message;
class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  LoginModel ?loginModel;

  Future<void> Login({
    required String? userName,
    required String?password,
  }) async {
    print("/////////////////////////");
    emit(LoginLoadingState());
    Dio dio = ApiConstants.get();
    return dio.post(
      "VanSales/Users/authenticate",
      data: {
        "name": userName,
        "password": password
      },
    ).
    then((value) {
      print("**********************************");
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      if(loginModel!.token==null){

        message=value.data;
      }else{
        if (loginModel!.settings![0].automaticpostacc != null) {
          CacheHelper.setBool(CustomerHelper.AUTOMATIC_POIST_ACC,
              loginModel!.settings![0].automaticpostacc);
        }
        if (loginModel!.settings![0].automaticpoststock != null) {
          CacheHelper.setBool(CustomerHelper.AUTOMATIC_POIST_STOCK,
              loginModel!.settings![0].automaticpoststock);
        }
       if (loginModel!.settings![0].showpayinmobcash != null) {
         CacheHelper.setBool(CustomerHelper.SHOW_PAY_IN_MOB_CASH,
             loginModel!.settings![0].showpayinmobcash);
       }

        CacheHelper.sharedPreferences.setString(CustomerHelper.COMPENYPATH,loginModel!.userproperty![0].compenypath!.toString());
         CacheHelper.sharedPreferences.setString(CustomerHelper.USER_NAME, loginModel!.userproperty![0].userName!.toString());
         CacheHelper.sharedPreferences.setString(CustomerHelper.USER_ID, loginModel!.userproperty![0].userid!.toString());
         CacheHelper.sharedPreferences.setString(CustomerHelper.YEAR, loginModel!.userproperty![0].uyear!.toString());


      }
      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
      print(CacheHelper.sharedPreferences.getString(CustomerHelper.COMPENYPATH));
      emit(LoginSuccessState(loginModel!));
    });

    //     .catchError((error) {
    //   print(error.toString());
    //   emit(LoginErrorState(error.toString()));
    // }
    // );
  }
}
