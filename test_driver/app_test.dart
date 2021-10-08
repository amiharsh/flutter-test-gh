import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counterKey');
    final buttonFinder = find.byTooltip('Increment');

    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver?.close();
    });

    test('starts app at 0', () async {
        await driver?.runUnsynchronized(() async {
          expect(await driver?.getText(counterTextFinder), "0");
        });
    }, timeout:Timeout.none);


    test('increments the app counter', () async {
      await driver?.tap(buttonFinder);
      await driver?.runUnsynchronized(() async {
        expect(await driver?.getText(counterTextFinder), "1");
      });
    }, timeout:Timeout.none);
  });
}