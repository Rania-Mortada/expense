

import 'package:expense/cuibit/cuibitexp.dart';
import 'package:expense/modeil/ExpenModeil.dart';

abstract class ExpenState{}
class ExpenInitialState extends ExpenState{}
class ExpenLoadingState extends ExpenState{}
class ExpenSuccessState extends ExpenState{}
class ExpenFailure extends ExpenState{
  final String errMessage;
  ExpenFailure(this.errMessage);
}
class ExpenTypeInitialState extends ExpenState{}
class ExpenTypeLoadingState extends ExpenState{}
class ExpenTypeSuccessState extends ExpenState{}
class ExpenTypeFailure extends ExpenState{
  final String errMessage;
  ExpenTypeFailure(this.errMessage);
}
class EmployeesInitialState extends ExpenState{}
class EmployeesLoadingState extends ExpenState{}
class EmployeesSuccessState extends ExpenState{}
class EmployeesFailure extends ExpenState{
  final String errMessage;
  EmployeesFailure(this.errMessage);
}
class SaveExpensesInitialState extends ExpenState{}
class SaveExpensesLoadingState extends ExpenState{}
class SaveExpensesSuccessState extends ExpenState{}
class SaveExpensesFailure extends ExpenState{
  final String errMessage;
  SaveExpensesFailure(this.errMessage);
}