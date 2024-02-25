import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:atmtha_mobile/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.atmthaLogo).existsSync(), isTrue);
    expect(File(Images.backArrow).existsSync(), isTrue);
    expect(File(Images.calenderIcon).existsSync(), isTrue);
    expect(File(Images.changPassBoy).existsSync(), isTrue);
    expect(File(Images.changePass).existsSync(), isTrue);
    expect(File(Images.changePassPlant).existsSync(), isTrue);
    expect(File(Images.changePassSvg).existsSync(), isTrue);
    expect(File(Images.changePasss).existsSync(), isTrue);
    expect(File(Images.chooseMajorIluustration).existsSync(), isTrue);
    expect(File(Images.codeIcon).existsSync(), isTrue);
    expect(File(Images.confirmCode).existsSync(), isTrue);
    expect(File(Images.confirmCodeGirl).existsSync(), isTrue);
    expect(File(Images.confirmPass).existsSync(), isTrue);
    expect(File(Images.congrats).existsSync(), isTrue);
    expect(File(Images.congratsIllustration).existsSync(), isTrue);
    expect(File(Images.congratsSvg).existsSync(), isTrue);
    expect(File(Images.createAccount).existsSync(), isTrue);
    expect(File(Images.dangerIcon).existsSync(), isTrue);
    expect(File(Images.favBoy).existsSync(), isTrue);
    expect(File(Images.handShake).existsSync(), isTrue);
    expect(File(Images.hello).existsSync(), isTrue);
    expect(File(Images.levelsBoy).existsSync(), isTrue);
    expect(File(Images.litertureGirl).existsSync(), isTrue);
    expect(File(Images.lockIcon).existsSync(), isTrue);
    expect(File(Images.loginGirlStack).existsSync(), isTrue);
    expect(File(Images.msgIcon).existsSync(), isTrue);
    expect(File(Images.mycodesGirl).existsSync(), isTrue);
    expect(File(Images.notificationIcon).existsSync(), isTrue);
    expect(File(Images.paymentIcon).existsSync(), isTrue);
    expect(File(Images.plant).existsSync(), isTrue);
    expect(File(Images.qrCodeGirl).existsSync(), isTrue);
    expect(File(Images.qrCodeIcon).existsSync(), isTrue);
    expect(File(Images.qusetionMark).existsSync(), isTrue);
    expect(File(Images.scienceBoy).existsSync(), isTrue);
    expect(File(Images.subjectListtileIcon).existsSync(), isTrue);
    expect(File(Images.subscribeLeading).existsSync(), isTrue);
    expect(File(Images.wlcLogin).existsSync(), isTrue);
  });
}
