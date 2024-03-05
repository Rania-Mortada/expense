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
  ExpensesTypeCubit() : super(ExpenInitialState());

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
      data: {
        "expid": 27,
        "expname": "مصروف ناقلة 1 ",
        "accid": 930,
        "exptype": null,
        "parentexid": 23,
        "chartcode": 11003001001,
        "chartname": "العهد المالية",
        "parentgroupname": "مصاريف"
      },
    ).
    then((value) {
      print("**********************************");
      print(value.data);
      expensesTypesModil = ExpensesTypesModil.fromJson (value.data);
      if(ExpensesTypesModil!.hashCode==null){

        message=value.data;
        }


      }

    );
  }
}
class EmployessCubit extends Cubit<ExpenState> {
  EmployessCubit() : super(ExpenInitialState());

  static EmployessCubit get(context) => BlocProvider.of(context);
  EmpioyeesModeil ?empioyeesModeil;

  Future<void> ExpenseRequest({
    required String?expname,
  }) async {
    print("/////////////////////////");
    emit(ExpenSuccessState());
    Dio dio = ApiConstants.get();
    return dio.post(
      "vansales/VacationRequest/FillData",
      data: {
        "empid": 1,
        "empcode": "1",
        "empname": "على",
        "empmob": "0114567246",
        "embemail": "ali@emaxit.com",
        "empadd": "الرياض",
        "empidno": "1234567891234",
        "empbdate": "1993/03/01",
        "emppic": "/uploads/EmployeesImages/72aa804f-ed06-45b1-851e-b519e0494228_.jpg",
        "empnotes": null,
        "eduname": "2",
        "branchid": 11,
        "branchname": "فرع1",
        "ccid": 218,
        "ccname": "فرع الرياض...",
        "nationid": 1,
        "nationname": "مصري ",
        "nationtype": 0,
        "jobid": 7,
        "jobname": "رئيس",
        "jobtype": 0,
        "empstatus": null,
        "empstatusname": null,
        "basicsalary": null,
        "housing": null,
        "allowncebsalary": null,
        "insursalary": 100.00,
        "empworkdate": "2024/01/08",
        "paytypeid": 1,
        "paytypename": "نقدى",
        "paychartid": 960,
        "empbankname": "54+684846",
        "empbankid": "12131242421",
        "annualvaction": null,
        "empchatid": 930,
        "employeemanager": null,
        "departmentid": 1,
        "hasovertime": null,
        "vacationrequest": 1,
        "loanrequest": 1,
        "custodyrequest": 1,
        "leaverequest": 1,
        "workhours": null,
        "attendtime": null,
        "leavetime": null,
        "fingerlat": null,
        "fingerlong": null,
        "mac": null,
        "attend_policy_id": 119,
        "job_type_id": 0,
        "vat_value": null,
        "fingerprint_type_name": "موبايل",
        "job_type_name": "ثابت",
        "fingerprint_type_id": 0,
        "salaryitemid": null,
        "salaryitemname": null,
        "overtime_policy": 22,
        "late_policy": 54,
        "absence_policy": 75,
        "vacation_policy": 8,
        "job_level_id": 10,
        "insuranceid": 14,
        "macaddress": "254ce5a4a8999fd3",
        "status": null,
        "empgender": null,
        "empreligion": null,
        "chartcodename": "11003001001 - العهد المالية"
      },
    ).
    then((value) {
      print("**********************************");
      print(value.data);
      empioyeesModeil = EmpioyeesModeil.fromJson (value.data);
      if(EmpioyeesModeil!.hashCode==null){

        message=value.data;
      }


    }

    );
  }
}
class SavaCubit extends Cubit<ExpenState> {
  SavaCubit() : super(ExpenInitialState());

  static SavaCubit get(context) => BlocProvider.of(context);
  SaveExpensesModeil ?saveExpensesModeil;

  Future<void> ExpenseRequest({
    required String?expname,
  }) async {
    print("/////////////////////////");
    emit(ExpenLoadingState());
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
    ).
    then((value) {
      print("**********************************");
      print(value.data);
      saveExpensesModeil = SaveExpensesModeil.fromJson (value.data);
      if(SaveExpensesModeil!.hashCode==null){

        message=value.data;
      }


    }

    );
  }
}









