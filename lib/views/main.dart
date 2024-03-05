import 'package:dio/dio.dart';
import 'package:expense/logincs/CubitLogin.dart';
import 'package:expense/cuibit/cuibitexp.dart';
import 'package:expense/logincs/Login.dart';
import 'package:flutter/material.dart';
import 'package:expense/views/ExpenseRequest.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expense/Samble_observre.dart';
import 'package:expense/Api/api.dart';
import 'TextFieldd.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer =  SimbleObservre();
  runApp(MyApp());
 await Dio;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> LoginCubit()),
        BlocProvider(create: (context)=> ExpensesTypeCubit()),
        BlocProvider(create: (context)=> EmployessCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,


        home:Directionality(
          textDirection: TextDirection.rtl,
          child: login(),
        ),

      ),
    );
  }


}