import 'package:flutter/material.dart';
import 'package:flutter_deer/login/login_router.dart';
import 'package:flutter_deer/routers/fluro_navigator.dart';
import 'package:flutter_deer/widgets/click_item.dart';
import 'package:flutter_deer/widgets/load_image.dart';
import 'package:flutter_deer/widgets/my_app_bar.dart';


/// design/8设置/index.html#artboard1
class AccountManagerPage extends StatefulWidget {

  const AccountManagerPage({Key? key}) : super(key: key);

  @override
  _AccountManagerPageState createState() => _AccountManagerPageState();
}

class _AccountManagerPageState extends State<AccountManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        centerTitle: 'Account management',
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClickItem(
                title: 'Shop logo',
                onTap: () {}
              ),
              const Positioned(
                top: 8.0,
                bottom: 8.0,
                right: 40.0,
                child: LoadAssetImage('shop/tx', width: 34.0),
              )
            ],
          ),
          ClickItem(
            title: 'change Password',
            content: 'Used for password login',
            onTap: () => NavigatorUtils.push(context, LoginRouter.updatePasswordPage)
          ),
          const ClickItem(
            title: 'Bind account',
            content: '15000000000',
          ),
        ],
      ),
    );
  }
}
