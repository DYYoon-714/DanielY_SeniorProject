import 'package:flutter/material.dart';
import 'package:senior_project/account/page/login.dart';
import 'package:senior_project/account/page/schedule_input.dart';
import 'package:senior_project/account/util/check_validate.dart';
import 'package:senior_project/common/Const/WidgetVariables.dart';
import 'package:senior_project/common/component/CustomButton.dart';
import 'package:senior_project/common/Const/CustomColors.dart';
import 'package:senior_project/common/component/CustomDropDownButton.dart';
import '../../common/component/CustomTextFormField.dart';
import 'package:stroke_text/stroke_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _houses = ['Blue', 'Green', 'Red', 'Yellow'];
  String? _selectedHouse;
  final _grades = ['9', '10', '11', '12'];
  String? _selectedGrade;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  final TextEditingController pw2Controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final FocusNode nameFNode = FocusNode();
  final FocusNode emailFNode = FocusNode();
  final FocusNode pwFNode = FocusNode();
  final FocusNode pw2FNode = FocusNode();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*const baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.black,
          width: 1.0
      )
    );*/
    const double sidePadding = 70;
    const double topSpacing = 15;
    const double bottomSpacing = 0;
    const double _topPadding = 10;
    const double _bottomPadding = 10;
    const double _rightPadding = 20;
    const double _leftPadding = 20;

    return MaterialApp(
      home: Scaffold(
          //backgroundColor: Colors.indigo,
          backgroundColor: CustomColors.darkBlue(),
          body: Form(
            key: formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70, top: 0, bottom: 20),
                    child: Image.asset('assets/images/phrase.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: sidePadding, right: sidePadding, top: topSpacing, bottom: bottomSpacing),
                    child: Text(
                      'Sign Up',
                      style:
                        TextStyle(
                          fontFamily: WidgetVariables.fontFamily,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: sidePadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                    child: CustomTextFormField(
                      hintText: '',
                      obscureText: false,
                      labelText: 'Username',
                      fontSize: WidgetVariables.fontSize,
                      fontFamily: WidgetVariables.fontFamily,
                      labelBorderWidth: WidgetVariables.labelBorderWidth,
                      labelBorderColor: Colors.white,
                      borderRadius: WidgetVariables.borderRadius,
                      normalBorderColor: WidgetVariables.normalBorderColor,
                      selectedBorderColor: WidgetVariables.selectedBorderColor,
                      normalBorderWidth: WidgetVariables.normalBorderWidth,
                      selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                      focusNode: nameFNode,
                      textController: nameController,
                      minLength: 0,
                      //minLength: 1,
                      topPadding: _topPadding,
                      bottomPadding: _bottomPadding,
                      leftPadding: _leftPadding,
                      rightPadding: _rightPadding,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: sidePadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                    child: CustomTextFormField(
                      hintText: '',
                      obscureText: false,
                      labelText: 'School Email',
                      fontSize: WidgetVariables.fontSize,
                      fontFamily: WidgetVariables.fontFamily,
                      labelBorderWidth: WidgetVariables.labelBorderWidth,
                      labelBorderColor: Colors.white,
                      borderRadius: WidgetVariables.borderRadius,
                      normalBorderColor: WidgetVariables.normalBorderColor,
                      selectedBorderColor: WidgetVariables.selectedBorderColor,
                      normalBorderWidth: WidgetVariables.normalBorderWidth,
                      selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                      focusNode: emailFNode,
                      textController: emailController,
                      minLength: 0,
                      //minLength: 1,
                      topPadding: _topPadding,
                      bottomPadding: _bottomPadding,
                      leftPadding: _leftPadding,
                      rightPadding: _rightPadding,
                    ),
                  ),
                  /*CustomDropDownButton(
                    borderRadius: WidgetVariables.borderRadius,
                    borderColor: Colors.black,
                    borderWidth: WidgetVariables.borderWidth,
                    topPadding: _topPadding,
                    bottomPadding: _bottomPadding,
                    leftPadding: _leftPadding,
                    rightPadding: _rightPadding,
                    fontSize: WidgetVariables.fontSize,
                    fontFamily: WidgetVariables.fontFamily,
                    hintText: 'Select House',
                    items: WidgetVariables.houses,
                    onChanged: (String value) {
                      setState(
                        (){WidgetVariables.selectedHouse = value!;}
                      );
                    },
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(top: topSpacing, bottom: bottomSpacing, left: sidePadding, right: sidePadding),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(WidgetVariables.borderRadius),
                        color: Colors.white,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          isExpanded: true,
                          borderRadius:BorderRadius.circular(WidgetVariables.borderRadius),
                          hint: const Padding(
                            padding: EdgeInsets.only(left: _leftPadding),
                            child: Text(
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: WidgetVariables.fontFamily,
                                fontSize: WidgetVariables.fontSize,
                              ),
                              'Select House',
                            ),
                          ),
                          value: _selectedHouse,
                          items: _houses.map(
                            (value){
                              return DropdownMenuItem(
                                value: value,
                                /*child: Center(*/
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: _leftPadding),
                                    child: Text(
                                      value,
                                      style:
                                      const TextStyle(
                                        color: Colors.black,
                                      )
                                    ),
                                  ),
                                //)
                              );
                            }).toList(),
                          onChanged: (String? value) {
                            setState(
                              (){_selectedHouse = value!;}
                            );
                            /*_houses.remove(value);
                            _houses.sort((a, b) {
                              if(a.compareTo(b) < 0) {
                                return -1;
                              }else{
                                return 1;
                              }
                            });
                            _houses.insert(0, value!);*/
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: topSpacing, bottom: bottomSpacing, left: sidePadding, right: sidePadding),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(WidgetVariables.borderRadius),
                        color: Colors.white,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          isExpanded: true,
                          borderRadius:BorderRadius.circular(10),
                          hint: const Padding(
                            padding: EdgeInsets.only(left: _leftPadding),
                            child: Text(
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: WidgetVariables.fontFamily,
                                fontSize: WidgetVariables.fontSize,
                              ),
                              'Select Grade',
                            ),
                          ),
                          value: _selectedGrade,
                          items: _grades.map(
                            (value){
                              return DropdownMenuItem(
                                value: value,
                                /*child: Center(*/
                                child: Padding(
                                  padding: const EdgeInsets.only(left: _leftPadding),
                                  child: Text(
                                    value,
                                    style:
                                    const TextStyle(
                                      color: Colors.black,
                                    )
                                  ),
                                ),
                                //)
                              );
                            }).toList(),
                          onChanged: (String? value) {
                            setState(
                              (){_selectedGrade = value!;}
                            );
                            /*_grades.remove(value);
                            _grades.sort((a, b) {
                              if(int.parse(a) < int.parse(b)) {
                                return -1;
                              }else{
                                return 1;
                              }
                            });
                            _grades.insert(0, value!);*/
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: sidePadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                    child: CustomTextFormField(
                      hintText: '',
                      obscureText: true,
                      labelText: 'Password',
                      fontSize: WidgetVariables.fontSize,
                      fontFamily: WidgetVariables.fontFamily,
                      labelBorderWidth: WidgetVariables.labelBorderWidth,
                      labelBorderColor: Colors.white,
                      borderRadius: WidgetVariables.borderRadius,
                      normalBorderColor: WidgetVariables.normalBorderColor,
                      selectedBorderColor: WidgetVariables.selectedBorderColor,
                      normalBorderWidth: WidgetVariables.normalBorderWidth,
                      selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                      focusNode: pwFNode,
                      textController: pwController,
                      minLength: 0,
                      //minLength: 8,
                      topPadding: _topPadding,
                      bottomPadding: _bottomPadding,
                      leftPadding: _leftPadding,
                      rightPadding: _rightPadding,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: sidePadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                    child: CustomTextFormField(
                      hintText: '',
                      obscureText: true,
                      labelText: 'Confirm Password',
                      fontSize: WidgetVariables.fontSize,
                      fontFamily: WidgetVariables.fontFamily,
                      labelBorderWidth: WidgetVariables.labelBorderWidth,
                      labelBorderColor: Colors.white,
                      borderRadius: WidgetVariables.borderRadius,
                      normalBorderColor: WidgetVariables.normalBorderColor,
                      selectedBorderColor: WidgetVariables.selectedBorderColor,
                      normalBorderWidth: WidgetVariables.normalBorderWidth,
                      selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                      focusNode: pw2FNode,
                      textController: pw2Controller,
                      minLength: 0,
                      //minLength: 1,
                      topPadding: _topPadding,
                      bottomPadding: _bottomPadding,
                      leftPadding: _leftPadding,
                      rightPadding: _rightPadding,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: sidePadding, right: sidePadding),
                    child: CustomButton(
                      text:'Enter',
                      textColor: CustomColors.yellow(),
                      width: double.infinity,
                      height: 50.0,
                      onPressed: () async{
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ScheduleInput()),
                          );
                        }
                      },
                      fontSize: WidgetVariables.fontSize,
                      fontFamily: WidgetVariables.fontFamily,
                      borderRadius: WidgetVariables.buttonBorderRadius,
                      borderColor: CustomColors.yellow() ,
                      borderWidth: WidgetVariables.borderWidth,
                      backgroundColor: CustomColors.darkBlue(),
                      foregroundColor: CustomColors.yellow(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, right: 150, top: 30, bottom: 0),
                    child: Image.asset('assets/images/CDSLogo.png'),
                  ),
                ]
            ),
          )
      ),
    );
  }
}
