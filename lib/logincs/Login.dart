
import 'package:expense/logincs/LoginState.dart';
import 'package:expense/views/ExpenseRequest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'CubitLogin.dart';
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var  emailController =TextEditingController();

  var passowrdController=TextEditingController();
  final TextEditingController _EmailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _validateLogin() {
    if (_formKey.currentState!.validate()) {
      print("Email: ${_EmailController.text}");
      print("Password: ${_passwordController.text}");
    }
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String?Email , password;
  bool isLoading =false;

  @override
  void initState() {
    // TODO: implement initState
    LoginCubit.get(context).Login;
    super.initState();
  }
  Widget build(BuildContext context){
    return ModalProgressHUD(inAsyncCall: isLoading,
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){

      if(state is LoginSuccessState)
      {

        print("................444444544...............");
        if(state.loginModel!.token!=null){
          print(".....................................");
          Fluttertoast.showToast(
              msg: "success",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ExpenseRequest(),
            ),
          );
        }
      }else{
        print("error........................................");
        Fluttertoast.showToast(
            msg: "",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }


    },
        builder: (context,state){
          if (state is LoginLoadingState){
            return
                Center(child: CircularProgressIndicator());

          }else{
            return Scaffold(
              backgroundColor: Color(0xFFF0F3FA),
              body: Form(
                key:formKey ,
                autovalidateMode: autovalidateMode,
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Column(
                              children: [
                                Image(image: AssetImage('asss/gggg.png'),width: 150,height: 150,),
                                Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 60,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30),
                          child: TextFormField(
                            validator: (data){
                              if (data?.isEmpty??true){
                                return'please complete the information';
                              }
                            },
                            controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (String)
                            {
                              print(String);

                            },
                            decoration: InputDecoration(
                                labelText: 'Eamil Adderss',
                                prefixIcon: Icon(
                                    Icons.email_outlined
                                ),
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),


                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30),
                          child: TextFormField(
                            validator: (data){
                              if(data?.isEmpty ?? true){
                                return 'Please complete the information';

                              }
                            },
                            controller: passowrdController,
                             keyboardType: TextInputType.visiblePassword,
                            //  obscureText: true,
                            onFieldSubmitted: (String)
                            {
                              print(String);

                            },
                            onChanged: (string){
                              print(string);
                            },
                            decoration: InputDecoration(
                                labelText: 'password',
                                prefixIcon: Icon(
                                    Icons.lock
                                ),
                                suffixIcon: Icon(
                                    Icons.remove_red_eye_sharp
                                ),

                                border: OutlineInputBorder()
                            ),
                          ),
                        ),

                        SizedBox(height:30 ,),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),


                            color: Color(0xFF324E66),
                          ),
                          width: 300,
                          height: 50,
                          //color: Color(0xFFF3A155),
                          child: MaterialButton(
                            onPressed: (){
                              if (formKey.currentState!.validate()){
                                print(emailController.text);
                                print(passowrdController.text);
                                LoginCubit.get(context).Login(
                                    userName: emailController.text, password: passowrdController.text);
                              }

                            },

                            child: Text('LOGIN',style: TextStyle(color: Colors.white),),
                          ),
                        ),

                        SizedBox(height: 30,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\t have an account?',

                            ),
                            GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, 'sing in');
                                },
                                child: Text(' Regstir'))
                          ],
                        ),

                      ],

                    ),
                  ),

                ),
              ),

            );

          }

        },



      ),
    );
  }


}