import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldWidgetPageState();
  }
}

class _TextFieldWidgetPageState extends State<TextFieldWidgetPage> {
  TextEditingController _accountInputController = new TextEditingController();
  TextEditingController _accountFormInputController =
      new TextEditingController();
  TextEditingController _passwordInputController = new TextEditingController();
  TextEditingController _passwordFormInputController =
      new TextEditingController();

  FocusNode _accountFocesNode = new FocusNode();
  FocusNode _passwordFocesNode = new FocusNode();

  GlobalKey _loginForm = new GlobalKey();

  @override
  void initState() {
    super.initState();
    _passwordInputController.addListener(() {
      Fluttertoast.showToast(
          msg: '正在输入P:' + _passwordInputController.text,
          gravity: ToastGravity.CENTER,
          textColor: Colors.red);
    });
    _accountFocesNode.addListener(() {
      Fluttertoast.showToast(msg: '账号输入获取焦点', gravity: ToastGravity.CENTER);
    });
    _passwordFocesNode.addListener(() {
      Fluttertoast.showToast(msg: '密码输入获取焦点', gravity: ToastGravity.CENTER);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入框控件'),
      ),
      body: (Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                controller: _accountInputController,
                decoration: InputDecoration(
                  labelText: '账号',
                  hintText: '手机号',
                  prefixIcon: Icon(Icons.people),
                  //隐藏下划线
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  Fluttertoast.showToast(
                      msg: '正在输入A:' + value,
                      gravity: ToastGravity.CENTER,
                      textColor: Colors.red);
                },
                focusNode: _accountFocesNode,
              ),
              TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: _passwordInputController,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码(自定义样式)',
                    prefixIcon: Icon(Icons.keyboard),
                    hintStyle: TextStyle(color: Colors.red, fontSize: 22.0)),
                focusNode: _passwordFocesNode,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('获取账号内容'),
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: _accountInputController.text,
                          gravity: ToastGravity.CENTER,
                          textColor: Colors.red);
                    },
                  ),
                  FlatButton(
                    child: Text('获取密码内容'),
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: _passwordInputController.text,
                          gravity: ToastGravity.CENTER,
                          textColor: Colors.red);
                    },
                  )
                ],
              ),
//              ==================================================================>
              Text('表单提交实例'),

              Form(
                key: _loginForm,

                autovalidate: true, //自动开启校验,
                child: (Column(
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      controller: _accountFormInputController,
                      decoration: InputDecoration(
                        labelText: '账号',
                        hintText: '手机号',
                        prefixIcon: Icon(Icons.people),
                        //隐藏下划线
                      ),
                      validator: (v) {
                        return v.trim().length > 0 ? null : "账号不能为空";
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: _passwordFormInputController,
                      validator: (v) {
                        return v.trim().length > 5 ? null : "密码长度不够";
                      },
                      decoration: InputDecoration(
                        labelText: '密码',
                        hintText: '请输入密码(自定义样式)',
                        prefixIcon: Icon(Icons.keyboard),
                      ),
                    ),
                    RaisedButton(
                      child: Text('登录'),
                      onPressed: () {
                        if ((_loginForm.currentState as FormState).validate()) {
                          Fluttertoast.showToast(
                              msg: '校验通过', gravity: ToastGravity.CENTER);
                        }
                      },
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
