
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:expense/cuibit/ExpenState.dart';
import 'package:expense/cuibit/cuibitexp.dart';
import 'package:flutter/material.dart';
import 'package:expense/views/ExpenseRequest.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:device_preview/device_preview.dart';
import 'package:expense/tim.dart';
class ExpenseRequest extends StatefulWidget{
  @override
  State<ExpenseRequest> createState() => _ExpenseRequestState();

}

TextEditingController _controller = TextEditingController();
List<String> textList = [];
TextEditingController controller = TextEditingController();
List<String> textlist = [];
TextEditingController textEditingController = TextEditingController();
List<String> dataList = [];


class _ExpenseRequestState extends State<ExpenseRequest> {
  void addToDataList() {
    String textFieldText = textEditingController.text;
    print('...................................................');
    String message = 'Employee Name:       $empname\nExpense Value Type:    '
        '$extyepname\nExpense Value:     ${_controller.text}\nNotes:       ${controller.text}';
    setState(() {
      dataList.add(message);
    });
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
   String?value, notes;
  bool isLoading =false;
  EmploExpen ?emploExpen;
  int ? empid;
  String ? empname;
  Tyepp?tyepp;
  int ? extyepid;
  String ?extyepname;

 late final void Function(String)? onTab;
  late final void Function(String)? onChanged;


  @override
  Widget build (BuildContext context){
    // DateTime now = DateTime.now();
    // String formattedDate = "${now.year}-${now.month}-${now.day}";
    // String formattedTime = "${now.hour}:${now.minute}:${now.second}";
    return SafeArea(
      child: Scaffold(
        floatingActionButton:
        Padding(
          padding: const EdgeInsets.only(right: 270),
          child: FloatingActionButton
            (onPressed: (){


          },
            child: Icon(Icons.print,),backgroundColor: Color(0xFFFF795C),),
        ),
        backgroundColor: Color(0xFFEEEEEE),
        body:
        Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height/4.5,
                      // width: 320,
                      // height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text('Expense Request No',style: TextStyle(fontSize: 15,color: Colors.grey),),
                            SizedBox(height: 2,),
                            Text('  AUTO',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 2,),
                            Text('Expense Request Date',style: TextStyle(fontSize: 15,color: Colors.grey),),

                            Padding(
                              padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
                              child: Container(
                                // width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(16)
                                ),
                                child: timData(),

                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                  children: [
                  Center(child:
                  Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('Add new expense',
                  style: TextStyle(fontSize: 15),),
                  )),
                  SizedBox(height: 5,),
                  Padding(
                  padding: const EdgeInsets.only(right: 180),

                  child: Text('Employee Name',
                  style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                  SizedBox(height: 10,),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: ModalProgressHUD(inAsyncCall: isLoading,
                          child: BlocConsumer<EmployessCubit,ExpenState>(
                              listener:(context , state){
                                print('sttttt');

                              },
                              builder:(context,state) {
                                print('looadinbbb');
                                print('looadinss');

                                if(state is EmployeesLoadingState){
                                  print('emhujjj');
                                  return LinearProgressIndicator();
                                }
                                else if (state is EmployeesSuccessState){

                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius
                                                .circular(5),
                                            border: Border.all(
                                                color: Colors.deepOrange
                                                    .withOpacity(
                                                    0.2))),

                                        child:  DropdownButton<EmploExpen>(
                                          value: emploExpen,
                                          items:
                                          EmployessCubit.get(context).empioyeesModeil!
                                              ?.data
                                              ?.map((employ){
                                            return DropdownMenuItem<EmploExpen>(
                                              value: EmploExpen
                                                (chartName: employ.empname ?? "",
                                                chartId: employ.empid ?? 0,),
                                              child: FittedBox(
                                                child: Text(employ.empname ??
                                                    '',),
                                              ),

                                            );
                                          } ).toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              emploExpen
                                                  ?.chartId =
                                                  value?.chartId ??
                                                      0;
                                              empid = value
                                                  ?.chartId ??
                                                  0;

                                              empname =
                                                  value?.chartName ??
                                                      "";
                                              print(
                                                  empname);
                                              print(
                                                  empname);
                                              print(
                                                  empid);
                                              print(empid);

                                            });
                                          },




                                        ),

                                      )
                                    ],
                                  );

                                }
                                else if(state is EmployeesFailure){

                                  print(state.errMessage.toString());
                                  return Text(state.errMessage.toString());
                                } else {
                                  return const LinearProgressIndicator(
                                    color: Colors.cyan,
                                  );

                                }
                              }

                          ),
                        ),
                      ),

                    ),



                  SizedBox(height: 10,),
                  Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text('Expense Type',
                  style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                  Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(15)
                  ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: ModalProgressHUD(inAsyncCall: isLoading,
                          child: BlocConsumer<ExpensesTypeCubit,ExpenState>(
                              listener:(context , state){},
                              builder:(context,state) {
                                if (state is ExpenTypeLoadingState){
                                  return LinearProgressIndicator();
                                }
                                else if (state is ExpenTypeSuccessState){
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius
                                                .circular(5),
                                            border: Border.all(
                                                color: Colors.deepOrange
                                                    .withOpacity(
                                                    0.2))),

                                        child:  DropdownButton<Tyepp>(
                                          value:tyepp ,
                                          items:
                                          ExpensesTypeCubit.get(context).expensesTypesModil!
                                              ?.data
                                              ?.map((typee){
                                            return DropdownMenuItem<Tyepp>(
                                              value: Tyepp
                                                (TyepName: typee.expname ?? "",
                                                TyepId: typee.expid ?? 0,),
                                              child: FittedBox(
                                                child: Text(typee.expname ??
                                                    '',),
                                              ),

                                            );
                                          } ).toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              tyepp
                                                  ?.TyepId =
                                                  value?.TyepId ??
                                                      0;
                                              extyepid = value
                                                  ?.TyepId ??
                                                  0;

                                              extyepname =
                                                  value?.TyepName ??
                                                      "";
                                              print(
                                                  extyepname);
                                              print(
                                                  extyepname);
                                              print(
                                                  extyepid);
                                              print(extyepid);

                                            });
                                          },




                                        ),

                                      )
                                    ],
                                  );

                                }
                                else if(state is EmployeesFailure){

                                  print(state.errMessage.toString());
                                  return Text(state.errMessage.toString());
                                } else {
                                  return const LinearProgressIndicator(
                                    color: Colors.cyan,
                                  );

                                }
                              }

                          ),
                        ),
                      )

                  ),
                  SizedBox(height: 10,),
                  Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(' Expense Value',
                  style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                  SizedBox(height: 10,),
                    Padding(
                   padding: const EdgeInsets.only(left: 10,right: 10),
                   child: Container(

                     // width: 300,
                     // height: 60,
                     decoration: BoxDecoration(
                         color: Color(0xFFEEEEEE),
                         borderRadius: BorderRadius.circular(15),
                         border: Border.all(
                             color: Color(0xFFEEEEEE)
                         )

                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: TextFormField(keyboardType: TextInputType.phone,

                         // onSaved: onSaved,
                         validator: (data){
                           if(data?.isEmpty ?? true){
                             return 'Please complete the information';


                           }
                         },
                         controller: _controller,
                         decoration: InputDecoration(
                           hintText: 'Enter Expense Value',
                           //   border: OutlineInputBorder()
                         ),

                       ),
                     ),
                   ),

                    ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(' Notes',
                    style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),
                  SizedBox(height: 10,),
                  /*TextField(
                       controller: _controller,
                       decoration: InputDecoration(labelText: 'Enter Text'),
                     ),*/
                  Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(

                  decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                  color: Color(0xFFEEEEEE)
                  )

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: TextFormField(

                    // onSaved: onSaved,
                    validator: (data){
                    if(data?.isEmpty ?? true){
                    return 'Please complete the information';

                    }
                    },

                    controller: controller,

                    maxLines: 5,
                    decoration: InputDecoration(
                    hintText: 'Notes',
                    //   border: OutlineInputBorder()
                    ),

                    ),
                  ),
                  ),

                  ),
                  GestureDetector(

                  child: MaterialButton(

                  minWidth: 200.0,
                  height: 35,
                  color: Color(0xFFFF795C),
                  child: Text('Add',style: new TextStyle(fontSize: 16.0, color: Colors.white)),

                  onPressed: (
                  ){
                  if (_formKey.currentState!.validate())
                  {

                  setState(() {
                    addToDataList();
                  });}
                  }

                  ),

                  ),
                    ListView.builder(
                   physics: AlwaysScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemCount: dataList.length,
                   itemBuilder: (context, index) {
                     return Container(
                       margin: EdgeInsets.symmetric(vertical: 5),
                       padding: EdgeInsets.all(10),
                       color: Color(0xFFEEEEEE),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(dataList[index]),
                           IconButton(
                             icon: Icon(Icons.delete),
                             onPressed: () {
                               setState(() {
                                 dataList.removeAt(index); // Remove the item from the list
                               });
                             },
                           ),
                         ],
                       ),
                     );
                   },
                    )

                  ],


                  ),

                  ),
                  ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: textList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(textList[index]),
                      );
                    },
                  ),

                ],

              ),
            ),
          ),
        ),


      ),
    );

  }
}
class EmploExpen {
  String? chartName;
  int? chartId;
// Add more attributes as needed

  EmploExpen({

    required this.chartName,
    required this.chartId,

  });
}
class Tyepp {
  String? TyepName;
  int? TyepId;
// Add more attributes as needed

  Tyepp({

    required this.TyepName,
    required this.TyepId,

  });
}





