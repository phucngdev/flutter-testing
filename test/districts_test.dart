import 'package:flutter_test/flutter_test.dart';
import '../lib/modals/districts.dart';

void main() {
  group('Districts', () {
    test('fromJson() and toJson()', () {
      final districts =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final jsonString = districts.toJson();
      final decodedDistricts = Districts.fromJson(jsonString);

      expect(decodedDistricts, equals(districts));
    });

    test('copyWith()', () {
      final districts =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final copiedDistricts = districts.copyWith(name: 'New Name');

      expect(copiedDistricts.name, equals('New Name'));
      expect(copiedDistricts.id, equals(districts.id));
      expect(copiedDistricts.level, equals(districts.level));
      expect(copiedDistricts.provinceId, equals(districts.provinceId));
    });

    test('equality', () {
      final districts1 =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final districts2 =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final districts3 =
          Districts(id: '2', name: 'Test', level: 'High', provinceId: '123');

      expect(districts1, equals(districts2));
      expect(districts1 == districts3, isFalse);
    });

    test('hashCode', () {
      final districts1 =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final districts2 =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final districts3 =
          Districts(id: '2', name: 'Test', level: 'High', provinceId: '123');

      expect(districts1.hashCode, equals(districts2.hashCode));
      expect(districts1.hashCode == districts3.hashCode, isFalse);
    });

    test('toString()', () {
      final districts =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final stringRepresentation = districts.toString();
      final expectedString =
          'Districts(id: 1, name: Test, level: High, provinceId: 123)';

      expect(stringRepresentation, equals(expectedString));
    });

    test('toMap() and fromMap()', () {
      final districts =
          Districts(id: '1', name: 'Test', level: 'High', provinceId: '123');
      final map = districts.toMap();
      final decodedDistricts = Districts.fromMap(map);

      expect(decodedDistricts, equals(districts));
    });
  });
}
