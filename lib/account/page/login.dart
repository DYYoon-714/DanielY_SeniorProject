import 'package:flutter/material.dart';
import 'package:senior_project/account/page/signup.dart';
import 'package:senior_project/common/Const/CustomColors.dart';
import 'package:senior_project/common/Const/WidgetVariables.dart';
import 'package:senior_project/common/component/CustomButton.dart';
import '../../common/component/CustomTextFormField.dart';

class Login extends StatelessWidget {//unable to live update screen
  const Login({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const double sidePadding = 70;
    const double topPadding = 10;
    const double bottomPadding = 10;
    const double leftPadding = 20;
    const double rightPadding = 20;

    final TextEditingController nameController = TextEditingController();
    final TextEditingController pwController = TextEditingController();
    //final formKey = GlobalKey<FormState>();
    final FocusNode nameFNode = FocusNode();
    final FocusNode pwFNode = FocusNode();

    return MaterialApp(
      home: Scaffold(
          backgroundColor: CustomColors.darkBlue(),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: sidePadding, right: sidePadding, top: 100, bottom: 20),
                  child: Image.asset('assets/images/phrase.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: sidePadding, right: sidePadding, top: 0, bottom: 0),
                  child: Text(
                    'Login',
                    style:
                    TextStyle(
                      fontFamily: WidgetVariables.fontFamily,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: sidePadding, right: sidePadding, top: topPadding, bottom: bottomPadding),
                  child: CustomTextFormField(
                    hintText: '',
                    obscureText: false,
                    labelText: 'Email',
                    fontSize: WidgetVariables.fontSize,
                    fontFamily: WidgetVariables.fontFamily,
                    labelBorderWidth: WidgetVariables.labelBorderWidth,
                    labelBorderColor: Colors.white,
                    borderRadius: WidgetVariables.borderRadius,
                    /*borderColor: Colors.black,
                    borderWidth: WidgetVariables.borderWidth,*/
                    normalBorderColor: WidgetVariables.normalBorderColor,
                    selectedBorderColor: WidgetVariables.selectedBorderColor,
                    normalBorderWidth: WidgetVariables.normalBorderWidth,
                    selectedBorderWidth: WidgetVariables.selectedBorderWidth,
                    focusNode: nameFNode,
                    textController: nameController,
                    minLength: 1,
                    topPadding: topPadding,
                    bottomPadding: bottomPadding,
                    leftPadding: leftPadding,
                    rightPadding: rightPadding,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: sidePadding, right: sidePadding, top: topPadding, bottom: bottomPadding),
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
                    minLength: 8,
                    topPadding: topPadding,
                    bottomPadding: bottomPadding,
                    leftPadding: leftPadding,
                    rightPadding: rightPadding,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: sidePadding, right: sidePadding, top: topPadding, bottom: bottomPadding),
                  child: CustomButton(
                    text:'Enter',
                    textColor: CustomColors.yellow(),
                    width: 300.0,
                    height: WidgetVariables.buttonHeight,
                    onPressed: (){
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp())
                      );*/
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
                  padding: const EdgeInsets.only(left: sidePadding, right: sidePadding, top: 7*topPadding, bottom: bottomPadding),
                  child: CustomButton(
                    text:'Sign up',
                    textColor: CustomColors.yellow(),
                    width: 300.0,
                    height: WidgetVariables.buttonHeight,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp())
                      );
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
                  padding: const EdgeInsets.only(left: 150, right: 150, top: 100, bottom: 30),
                  child: Image.asset('assets/images/CDSLogo.png'),
                ),
                //customButton(text:'Enter', width: 300.0, height: 15.0, onPressed: (){}),

              ]
          )
      ),
    );
  }
}