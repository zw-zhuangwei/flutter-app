import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import '../../config/manage_config.dart';
import '../../utils/storage_util.dart';

import '../../api/account_api.dart';

class LoginAccountPage extends StatefulWidget {
  @override
  _LoginAccountPageState createState() => new _LoginAccountPageState();
}

class _LoginAccountPageState extends State<LoginAccountPage> {
  TextEditingController _unameController =
      TextEditingController(text: 'zhuangwei');
  TextEditingController _pwdController = TextEditingController(text: '123456');
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)),
                  // 校验用户名
                  validator: (v) {
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  }),
              TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  }),
              // 登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () async {
                          if ((_formKey.currentState as FormState).validate()) {
                            // 验证通过提交数据
                            Map res = await AccountApi.login({
                              'uname': _unameController.text,
                              'pwd': _pwdController.text,
                            });

                            await StorageUtil.setString(
                                ManageConfig.userTokenStorage,
                                res['data']['token']);

                            LocalStorage localStorage =
                                LocalStorage('LocalStorage');
                            await localStorage.ready;

                            Navigator.of(context)
                                .pushReplacementNamed('/dio_plug_widget');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
