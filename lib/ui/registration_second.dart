import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegistrationSecond extends StatefulWidget {
  @override
  _RegistrationSecondState createState() => _RegistrationSecondState();
}

class _RegistrationSecondState extends State<RegistrationSecond> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not validated");
    }
  }

  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: new InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.grey[400], width: 1)),
                      focusedBorder: InputBorder.none,
                      hintText: "ФИО",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
                Form(
                  autovalidate: true,
                  key: formkey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Colors.grey[400], width: 1)),
                        focusedBorder: InputBorder.none,
                        hintText: "Эл.адрес",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                        EmailValidator(errorText: "Not A Valid Email"),
                      ]),
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return "Required";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.grey[400], width: 1)),
                      focusedBorder: InputBorder.none,
                      hintText: "Номер телефона",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Form(
                  autovalidate: true,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                        obscureText: true,
                        onChanged: (val) => password = val,
                        decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.grey[400], width: 1)),
                          focusedBorder: InputBorder.none,
                          hintText: "Введите пароль",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'password is required'),
                          MinLengthValidator(6, errorText: "too short"),
                          // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
                        ])),
                  ),
                ),
                Form(
                  autovalidate: true,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Colors.grey[400], width: 1)),
                        focusedBorder: InputBorder.none,
                        hintText: "Повторите пароль",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                      validator: (val) => MatchValidator(errorText: 'passwords do not match').validateMatch(val, password),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 300,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Регистрация',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: validate,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
