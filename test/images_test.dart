import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:atmtha_mobile/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.profile).existsSync(), isTrue);
    expect(File(Images.appBarIcon).existsSync(), isTrue);
    expect(File(Images.boyContactUs).existsSync(), isTrue);
    expect(File(Images.boyprofile).existsSync(), isTrue);
    expect(File(Images.changePassSvg).existsSync(), isTrue);
    expect(File(Images.changePasss).existsSync(), isTrue);
    expect(File(Images.confirmCode).existsSync(), isTrue);
    expect(File(Images.confirmCodeGirl).existsSync(), isTrue);
    expect(File(Images.confirmPass).existsSync(), isTrue);
    expect(File(Images.congrats).existsSync(), isTrue);
    expect(File(Images.congratsSvg).existsSync(), isTrue);
    expect(File(Images.createAccount).existsSync(), isTrue);
    expect(File(Images.editProfile).existsSync(), isTrue);
    expect(File(Images.facebook).existsSync(), isTrue);
    expect(File(Images.favouriteProfile).existsSync(), isTrue);
    expect(File(Images.logOutProfile).existsSync(), isTrue);
    expect(File(Images.loginGirlStack).existsSync(), isTrue);
    expect(File(Images.logo2).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
    expect(File(Images.manSettings).existsSync(), isTrue);
    expect(File(Images.mycodeProfile).existsSync(), isTrue);
    expect(File(Images.questionBoyWayVerity).existsSync(), isTrue);
    expect(File(Images.scienceBoy).existsSync(), isTrue);
    expect(File(Images.telegram).existsSync(), isTrue);
    expect(File(Images.test).existsSync(), isTrue);
    expect(File(Images.verityCodeGirl).existsSync(), isTrue);
    expect(File(Images.verityCodeMobile).existsSync(), isTrue);
    expect(File(Images.wlcLogin).existsSync(), isTrue);
  });
}
