import 'package:flutter_test/flutter_test.dart';
import '../lib/modals/province.dart';

void main() {
  group('Province', () {
    test('fromJson() and toJson()', () {
      final province = Province(id: '1', name: 'Test', level: 'High');
      final jsonString = province.toJson();
      final decodedProvince = Province.fromJson(jsonString);

      expect(decodedProvince, equals(province));
    });

    test('copyWith()', () {
      final province = Province(id: '1', name: 'Test', level: 'High');
      final copiedProvince = province.copyWith(name: 'New Name');

      expect(copiedProvince.name, equals('New Name'));
      expect(copiedProvince.id, equals(province.id));
      expect(copiedProvince.level, equals(province.level));
    });

    test('equality', () {
      final province1 = Province(id: '1', name: 'Test', level: 'High');
      final province2 = Province(id: '1', name: 'Test', level: 'High');
      final province3 = Province(id: '2', name: 'Test', level: 'High');

      expect(province1, equals(province2));
      expect(province1 == province3, isFalse);
    });

    test('hashCode', () {
      final province1 = Province(id: '1', name: 'Test', level: 'High');
      final province2 = Province(id: '1', name: 'Test', level: 'High');
      final province3 = Province(id: '2', name: 'Test', level: 'High');

      expect(province1.hashCode, equals(province2.hashCode));
      expect(province1.hashCode == province3.hashCode, isFalse);
    });

    test('toString()', () {
      final province = Province(id: '1', name: 'Test', level: 'High');
      final stringRepresentation = province.toString();
      final expectedString = 'Province(id: 1, name: Test, level: High)';

      expect(stringRepresentation, equals(expectedString));
    });

    test('toMap() and fromMap()', () {
      final province = Province(id: '1', name: 'Test', level: 'High');
      final map = province.toMap();
      final decodedProvince = Province.fromMap(map);

      expect(decodedProvince, equals(province));
    });
  });
}
