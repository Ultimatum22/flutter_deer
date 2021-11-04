import 'package:flutter/material.dart';
import 'package:flutter_deer/res/resources.dart';
import 'package:flutter_deer/routers/fluro_navigator.dart';
import 'package:flutter_deer/routers/routers.dart';
import 'package:flutter_deer/widgets/load_image.dart';
import 'package:flutter_deer/widgets/my_app_bar.dart';
import 'package:flutter_deer/widgets/my_button.dart';

/// design/2店铺审核/index.html#artboard2
class StoreAuditResultPage extends StatefulWidget {

  const StoreAuditResultPage({Key? key}) : super(key: key);

  @override
  _StoreAuditResultPageState createState() => _StoreAuditResultPageState();
}

class _StoreAuditResultPageState extends State<StoreAuditResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Audit results',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Gaps.vGap50,
            const LoadAssetImage('store/icon_success',
              width: 80.0,
              height: 80.0,
            ),
            Gaps.vGap12,
            const Text(
              'Congratulations, the store information was successfully reviewed',
              style: TextStyles.textSize16,
            ),
            Gaps.vGap8,
            Text(
              '2021-02-21 15:20:10',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Gaps.vGap8,
            Text(
              'Estimated completion time: February 28',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Gaps.vGap24,
            MyButton(
              onPressed: () {
                NavigatorUtils.push(context, Routes.home, clearStack: true);
              },
              text: 'Enter',
            )
          ],
        ),
      ),
    );
  }
}
