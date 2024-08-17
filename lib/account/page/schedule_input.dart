import 'package:flutter/material.dart';
import 'package:senior_project/account/page/login.dart';
import 'package:senior_project/account/util/check_validate.dart';
import 'package:senior_project/common/Const/WidgetVariables.dart';
import 'package:senior_project/common/component/CustomButton.dart';
import 'package:senior_project/common/Const/CustomColors.dart';
import 'package:senior_project/common/component/CustomDropDownButton.dart';
import '../../common/component/CustomTextFormField.dart';

class ScheduleInput extends StatefulWidget {
  const ScheduleInput({super.key});

  @override
  State<ScheduleInput> createState() => _ScheduleInputState();
}

class _ScheduleInputState extends State<ScheduleInput> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController b1Controller = TextEditingController();
  final FocusNode b1FNode = FocusNode();
  final TextEditingController b2Controller = TextEditingController();
  final FocusNode b2FNode = FocusNode();
  final TextEditingController b3Controller = TextEditingController();
  final FocusNode b3FNode = FocusNode();
  final TextEditingController b4Controller = TextEditingController();
  final FocusNode b4FNode = FocusNode();
  final TextEditingController b5Controller = TextEditingController();
  final FocusNode b5FNode = FocusNode();
  final TextEditingController b6Controller = TextEditingController();
  final FocusNode b6FNode = FocusNode();
  final TextEditingController b7Controller = TextEditingController();
  final FocusNode b7FNode = FocusNode();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*const baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.black,
            width: 1.0
        )
    );*/
    const double sidePadding = 50;
    const double midPadding = 10;
    const double _topPadding = 10;
    const double _bottomPadding = 10;
    const double _rightPadding = 20;
    const double _leftPadding = 20;
    const double topSpacing = 15;
    const double bottomSpacing = 0;

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
                    padding: const EdgeInsets.only(left: 70, right: 70, top: 10, bottom: 20),
                    child: Image.asset('assets/images/phrase.png'),
                  ),
                  /*const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 0),
                    child:
                    Text(
                      'Schedule',
                      style:
                      TextStyle(
                        fontFamily: WidgetVariables.fontFamily,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),*/
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 20),
                    child: Text(
                      'Arrange Schedule',
                      style:
                      TextStyle(
                        fontFamily: WidgetVariables.fontFamily,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: midPadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                          child: CustomTextFormField(
                            hintText: '',
                            obscureText: false,
                            labelText: 'Block 1',
                            fontSize: WidgetVariables.fontSize,
                            fontFamily: WidgetVariables.fontFamily,
                            labelBorderWidth: WidgetVariables.labelBorderWidth,
                            labelBorderColor: Colors.white,
                            borderRadius: WidgetVariables.borderRadius,
                            normalBorderColor: WidgetVariables.normalBorderColor,
                            selectedBorderColor: WidgetVariables.selectedBorderColor,
                            normalBorderWidth: WidgetVariables.normalBorderWidth,
                            selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                            focusNode: b1FNode,
                            textController: b1Controller,
                            minLength: 0,
                            //minLength: 1,
                            topPadding: _topPadding,
                            bottomPadding: _bottomPadding,
                            leftPadding: _leftPadding,
                            rightPadding: _rightPadding,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: sidePadding, left: midPadding, top: topSpacing, bottom: bottomSpacing),
                          child: CustomTextFormField(
                            hintText: '',
                            obscureText: false,
                            labelText: 'Block 2',
                            fontSize: WidgetVariables.fontSize,
                            fontFamily: WidgetVariables.fontFamily,
                            labelBorderWidth: WidgetVariables.labelBorderWidth,
                            labelBorderColor: Colors.white,
                            borderRadius: WidgetVariables.borderRadius,
                            normalBorderColor: WidgetVariables.normalBorderColor,
                            selectedBorderColor: WidgetVariables.selectedBorderColor,
                            normalBorderWidth: WidgetVariables.normalBorderWidth,
                            selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                            focusNode: b2FNode,
                            textController: b2Controller,
                            minLength: 0,
                            //minLength: 1,
                            topPadding: _topPadding,
                            bottomPadding: _bottomPadding,
                            leftPadding: _leftPadding,
                            rightPadding: _rightPadding,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: midPadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                          child: CustomTextFormField(
                            hintText: '',
                            obscureText: false,
                            labelText: 'Block 3',
                            fontSize: WidgetVariables.fontSize,
                            fontFamily: WidgetVariables.fontFamily,
                            labelBorderWidth: WidgetVariables.labelBorderWidth,
                            labelBorderColor: Colors.white,
                            borderRadius: WidgetVariables.borderRadius,
                            normalBorderColor: WidgetVariables.normalBorderColor,
                            selectedBorderColor: WidgetVariables.selectedBorderColor,
                            normalBorderWidth: WidgetVariables.normalBorderWidth,
                            selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                            focusNode: b3FNode,
                            textController: b3Controller,
                            minLength: 0,
                            //minLength: 1,
                            topPadding: _topPadding,
                            bottomPadding: _bottomPadding,
                            leftPadding: _leftPadding,
                            rightPadding: _rightPadding,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: sidePadding, left: midPadding, top: topSpacing, bottom: bottomSpacing),
                          child: CustomTextFormField(
                            hintText: '',
                            obscureText: false,
                            labelText: 'Block 4',
                            fontSize: WidgetVariables.fontSize,
                            fontFamily: WidgetVariables.fontFamily,
                            labelBorderWidth: WidgetVariables.labelBorderWidth,
                            labelBorderColor: Colors.white,
                            borderRadius: WidgetVariables.borderRadius,
                            normalBorderColor: WidgetVariables.normalBorderColor,
                            selectedBorderColor: WidgetVariables.selectedBorderColor,
                            normalBorderWidth: WidgetVariables.normalBorderWidth,
                            selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                            focusNode: b4FNode,
                            textController: b4Controller,
                            minLength: 0,
                            //minLength: 1,
                            topPadding: _topPadding,
                            bottomPadding: _bottomPadding,
                            leftPadding: _leftPadding,
                            rightPadding: _rightPadding,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: midPadding, left: sidePadding, top: topSpacing, bottom: bottomSpacing),
                          child: CustomTextFormField(
                            hintText: '',
                            obscureText: false,
                            labelText: 'Block 5',
                            fontSize: WidgetVariables.fontSize,
                            fontFamily: WidgetVariables.fontFamily,
                            labelBorderWidth: WidgetVariables.labelBorderWidth,
                            labelBorderColor: Colors.white,
                            borderRadius: WidgetVariables.borderRadius,
                            normalBorderColor: WidgetVariables.normalBorderColor,
                            selectedBorderColor: WidgetVariables.selectedBorderColor,
                            normalBorderWidth: WidgetVariables.normalBorderWidth,
                            selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                            focusNode: b5FNode,
                            textController: b5Controller,
                            minLength: 0,
                            //minLength: 1,
                            topPadding: _topPadding,
                            bottomPadding: _bottomPadding,
                            leftPadding: _leftPadding,
                            rightPadding: _rightPadding,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: sidePadding, left: midPadding, top: topSpacing, bottom: bottomSpacing),
                          child: CustomTextFormField(
                            hintText: '',
                            obscureText: false,
                            labelText: 'Block 6',
                            fontSize: WidgetVariables.fontSize,
                            fontFamily: WidgetVariables.fontFamily,
                            labelBorderWidth: WidgetVariables.labelBorderWidth,
                            labelBorderColor: Colors.white,
                            borderRadius: WidgetVariables.borderRadius,
                            normalBorderColor: WidgetVariables.normalBorderColor,
                            selectedBorderColor: WidgetVariables.selectedBorderColor,
                            normalBorderWidth: WidgetVariables.normalBorderWidth,
                            selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                            focusNode: b6FNode,
                            textController: b6Controller,
                            minLength: 0,
                            //minLength: 1,
                            topPadding: _topPadding,
                            bottomPadding: _bottomPadding,
                            leftPadding: _leftPadding,
                            rightPadding: _rightPadding,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2.5*sidePadding, left: 2.5*sidePadding, top: topSpacing, bottom: bottomSpacing),
                    child: CustomTextFormField(
                      hintText: '',
                      obscureText: false,
                      labelText: 'Block 7',
                      fontSize: WidgetVariables.fontSize,
                      fontFamily: WidgetVariables.fontFamily,
                      labelBorderWidth: WidgetVariables.labelBorderWidth,
                      labelBorderColor: Colors.white,
                      borderRadius: WidgetVariables.borderRadius,
                      normalBorderColor: WidgetVariables.normalBorderColor,
                      selectedBorderColor: WidgetVariables.selectedBorderColor,
                      normalBorderWidth: WidgetVariables.normalBorderWidth,
                      selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                      focusNode: b7FNode,
                      textController: b7Controller,
                      minLength: 0,
                      //minLength: 1,
                      topPadding: _topPadding,
                      bottomPadding: _bottomPadding,
                      leftPadding: _leftPadding,
                      rightPadding: _rightPadding,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 70, right: 70),
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
                            MaterialPageRoute(builder: (context) => const Login()),
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
                    padding: const EdgeInsets.only(left: 150, right: 150, top: 50, bottom: 0),
                    child: Image.asset('assets/images/CDSLogo.png'),
                  ),
                ]
            ),
          )
      ),
    );
  }
}
