import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tolhackeys/theme.dart';

import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DateTime selectedDate = DateTime.now();
  TextEditingController _textEditingController = TextEditingController();
  int currentStep = 0;
  bool isCompleted = false;

  GlobalKey<FormState> basicFormKey = GlobalKey<FormState>();
  int activeIndex = 0;
  int totalIndex = 3;

  @override
  Widget build(BuildContext context) {
    Widget firstNameField() {
      return Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_name.png',
                      width: 20,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'First Name',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget lastNameField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_name.png',
                      width: 20,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Last Name',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget titleContent() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Getting Started',
              style: secondaryTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Let’s Register for explore continues.',
              style: secondaryTextStyle2.copyWith(fontSize: 12),
            ),
          ],
        ),
      );
    }

    Widget NIKField() {
      return Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_nik.png',
                      width: 20,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration.collapsed(
                          hintText: 'NIK',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    DateTime date = DateTime.now();
    Future<void> _selectDate(BuildContext context) async {
      final now = DateTime.now();
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: date ?? now,
          firstDate: DateTime(1900),
          lastDate: now);
      if (picked != null && picked != date) {
        print('hello $picked');
        setState(() {
          date = picked;
        });
      }
    }

    Widget dateBirthField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_cake.png',
                      width: 22,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Date of Birth',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                        controller: _textEditingController,
                        onTap: () async {
                          // Below line stops keyboard from appearing
                          FocusScope.of(context).requestFocus(new FocusNode());
                          // Show Date Picker Here
                          await _selectDate(context);
                          _textEditingController.text =
                              DateFormat('yyyy/MM/dd').format(date);
                          //setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Initial Selected Value
    String? dropdownValue;

    Widget genderField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 18, right: 18),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_gender.png',
                      width: 22,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      hint: const Text('Gender'),
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Male', 'Female']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 20,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'E-mail',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget phoneNumberField() {
      return Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 5,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_phone.png',
                      width: 20,
                      color: textSecondary,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Phone',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordField() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6,
              ),
              decoration: boxDecorationForm,
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.lock_fill,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: inputTextStyle.copyWith(
                          fontSize: 14,
                          color: textInput,
                        ),
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Password',
                          hintStyle: inputTextStyle.copyWith(
                            fontSize: 14,
                            color: textInput,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget loginOtherWays() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 10),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text("Or continue with"),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 40),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
          ],
        ),
      );
    }

    Widget logoLogin() {
      return Align(
        alignment: Alignment.center,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_facebook.png',
                width: 30,
              ),
              SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/icon_google.png',
                width: 30,
              ),
              SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/icon_apple.png',
                width: 30,
              ),
            ],
          ),
        ),
      );
    }

    Widget signIn() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'already have an account? ',
              style: buttonSignUpTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Sign In',
                style: LinkTextStyle.copyWith(fontSize: 11, fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    List<Step> getSteps() => [
          Step(
              title: Text(
                'Personal',
                style: secondaryTextStyle.copyWith(fontWeight: bold),
              ),
              content: Column(
                children: [
                  firstNameField(),
                  lastNameField(),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              isActive: currentStep >= 0,
              state: currentStep <= 0 ? StepState.indexed : StepState.complete),
          Step(
              title: Text('Identity',
                  style: secondaryTextStyle.copyWith(fontWeight: bold)),
              content: Column(
                children: [
                  NIKField(),
                  dateBirthField(),
                  genderField(),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              isActive: currentStep >= 1,
              state: currentStep <= 1 ? StepState.indexed : StepState.complete),
          Step(
              title: Text(
                'Account',
                style: secondaryTextStyle.copyWith(fontWeight: bold),
              ),
              content: Column(
                children: [
                  phoneNumberField(),
                  emailField(),
                  passwordField(),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              isActive: currentStep >= 2,
              state: currentStep >= 2 ? StepState.indexed : StepState.indexed)
        ];

    continueStep() {
      final isLastStep = currentStep == getSteps().length - 1;
      if (isLastStep) {
        Navigator.pushNamed(context, "/home-main");
      }
      if (currentStep < 2) {
        setState(() {
          currentStep = currentStep + 1;
        });
      }
    }

    cancelStep() {
      if (currentStep > 0) {
        setState(() {
          currentStep = currentStep - 1;
        });
      }
    }

    onStepTapped(int value) {
      setState(() {
        currentStep = value;
      });
    }

    Widget controlsBuilder(context, details) {
      final isLastStep = currentStep == getSteps().length - 1;
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            top: 5,
          ),
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onPressed: details.onStepContinue,
                  child: Text(
                    isLastStep ? "Sign Up" : "Next",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
              ),
              if (currentStep != 0)
                SizedBox(
                  width: 10,
                ),
              if (currentStep != 0)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromHeight(50),
                    primary: const Color.fromARGB(255, 160, 149, 149),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onPressed: details.onStepCancel,
                  child: Text(
                    "Back",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg_1.jpg"), fit: BoxFit.cover),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: 43, top: MediaQuery.of(context).viewPadding.top),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).viewPadding.top,
                    ),
                    Text(
                      "Tolhackeyes",
                      style: primaryTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      "Mari jaga bumi melalui aplikasi kami! ",
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.75,
              builder: (context, scrollController) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 21,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleContent(),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 360,
                          child: Theme(
                            data: ThemeData(
                              canvasColor: Colors.white,
                            ),
                            child: Stepper(
                              elevation: 0,
                              physics: ClampingScrollPhysics(),
                              type: StepperType.horizontal,
                              currentStep: currentStep,
                              onStepContinue: continueStep,
                              onStepCancel: cancelStep,
                              onStepTapped: onStepTapped,
                              controlsBuilder: controlsBuilder,
                              steps: getSteps(),
                            ),
                          ),
                        ),
                        loginOtherWays(),
                        logoLogin(),
                        signIn(),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
