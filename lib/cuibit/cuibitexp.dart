import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:expense/Api/herpir.dart';
import 'package:expense/modeil/Employees.dart';
import 'package:expense/modeil/ExpenModeil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logincs/CubitLogin.dart';
import 'package:expense/modeil/ExpenShModeli.dart';

import 'ExpenState.dart';
class ExpensesTypeCubit extends Cubit<ExpenState> {
  ExpensesTypeCubit() : super(ExpenTypeInitialState());

  static ExpensesTypeCubit get(context) => BlocProvider.of(context);
  ExpensesTypesModil ?expensesTypesModil;

  Future<void> ExpenseRequest({
    required String?expname,
  }) async {
    print("/////////////////////////");
    emit(ExpenLoadingState());
    Dio dio = ApiConstants.get();
    return dio.post(
      "vansales/Expenses/FillData",

      data:{
        "searchModel": {
          "tableName": "sys_expenses_Sel",
          "SearchVal": ""
        },
        "ParamNames": []
      },
      options: Options(headers: ApiConstants.getFullHeader()),
    ).
    then((value) {
      print("**********************************");
      print(value.data);
      expensesTypesModil = ExpensesTypesModil.fromJson (value.data);
      if(ExpensesTypesModil!.hashCode==null){

        message=value.data;
        }
emit(ExpenTypeSuccessState());

      }

    );
  }
}
class EmployessCubit extends Cubit<ExpenState> {
  EmployessCubit() : super(EmployeesInitialState());

  static EmployessCubit get(context) => BlocProvider.of(context);
  EmpioyeesModeil ?empioyeesModeil;

  Future<void> ExpenseRequest({
    required String?expname,
  }) async {
    print("/////////////////////////");
    emit(EmployeesLoadingState());
    Dio dio = ApiConstants.get();
    return await dio.post(
      "vansales/VacationRequest/FillData",
      data:{
        "searchModel":
        {
          "tableName": "hr_employees_sel_search",
          "SearchVal": ""
        } ,  "ParamNames":[
          {  "paramName": "searchval", "paramVal": "1"}
        ]
      },

       options: Options(headers: ApiConstants.getFullHeader()),

    ).
    then((value) {
      print("**********************************");
      print(value.data);
      empioyeesModeil = EmpioyeesModeil.fromJson (value.data);
      if(EmpioyeesModeil!.hashCode==null){

        message=value.data;
      }

   emit(EmployeesSuccessState());
    }

    );
  }
}
class SavaCubit extends Cubit<ExpenState> {
  SavaCubit() : super(SaveExpensesInitialState());

  static SavaCubit get(context) => BlocProvider.of(context);
  SaveExpensesModeil ?saveExpensesModeil;

  Future<void> ExpenseRequest({
    required String?expname,
  }) async {
    print("/////////////////////////");
    emit(SaveExpensesLoadingState());
    Dio dio = ApiConstants.get();
    return dio.post(
      "vansales/ExpensesRequest/SaveData",
      data: {
        "hrexpensesid": 0,
        "empid": 0,
        "empname": "string",
        "dte": "string",
        "totalexpenses": 0,
        "cuser": "string",
        "expensesnumber": "string"

      },
      options: Options(headers: ApiConstants.getFullHeader()),

    ).
    then((value) {
      print("**********************************");
      print(value.data);
      saveExpensesModeil = SaveExpensesModeil.fromJson (value.data);
      if(SaveExpensesModeil!.hashCode==null){

        message=value.data;
      }

      emit(SaveExpensesSuccessState());


    }

    );
  }
}









