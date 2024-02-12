import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:atmtha_mobile/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.changePassSvg).existsSync(), isTrue);
    expect(File(Images.changePasss).existsSync(), isTrue);
    expect(File(Images.confirmCode).existsSync(), isTrue);
    expect(File(Images.confirmCodeGirl).existsSync(), isTrue);
    expect(File(Images.confirmPass).existsSync(), isTrue);
    expect(File(Images.congrats).existsSync(), isTrue);
    expect(File(Images.congratsSvg).existsSync(), isTrue);
    expect(File(Images.createAccount).existsSync(), isTrue);
    expect(File(Images.loginGirlStack).existsSync(), isTrue);
    expect(File(Images.scienceBoy).existsSync(), isTrue);
    expect(File(Images.wlcLogin).existsSync(), isTrue);
  });
}
