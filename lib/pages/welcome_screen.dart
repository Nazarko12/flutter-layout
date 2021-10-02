import 'package:flutter/material.dart';
import 'package:lab2/size_config.dart';
import 'package:lab2/styling.dart';

import '../images.dart';
import '../strings.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Align(
                  alignment: Alignment.center, child: WelcomeContentWidget()),
            ),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class WelcomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FittedBox(
                    child: Row(children: [
                      Image.asset(
                        Images.homeImage,
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        Strings.nav1,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        Strings.nav2,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        Strings.nav3,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                ),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FittedBox(
                    child: Row(children: [
                      Image.asset(
                        Images.homeImage,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        Strings.welcomeScreenSubTitle,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward),
                    ]),
                  ),
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 1 * SizeConfig.heightMultiplier),
              child: Image.asset(
                Images.homeImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topCenter,
              child: FittedBox(
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: 2 * SizeConfig.heightMultiplier),
                  child: Text(
                    Strings.welcomeScreenSubTitle,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          constraints: BoxConstraints(
              minHeight: 6.5 * SizeConfig.heightMultiplier,
              maxHeight: 7.9 * SizeConfig.heightMultiplier),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(4 * SizeConfig.heightMultiplier),
            ),
            color: AppTheme.topBarBackgroundColor,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.chevron_left,
                  size: 6 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Text(
                Strings.nav1,
                style: Theme.of(context).textTheme.button,
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.chevron_right,
                  size: 6 * SizeConfig.imageSizeMultiplier,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
