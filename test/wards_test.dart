import 'package:flutter_test/flutter_test.dart';
import '../lib/modals/wards.dart';

void main() {
  group('Wards', () {
    test('fromJson() and toJson()', () {
      final wards = Wards(id: '1', name: 'Test', level: 'High');
      final jsonString = wards.toJson();
      final decodedWards = Wards.fromJson(jsonString);

      expect(decodedWards, equals(wards));
    });

    test('copyWith()', () {
      final wards = Wards(id: '1', name: 'Test', level: 'High');
      final copiedWards = wards.copyWith(name: 'New Name');

      expect(copiedWards.name, equals('New Name'));
      expect(copiedWards.id, equals(wards.id));
      expect(copiedWards.level, equals(wards.level));
    });

    test('equality', () {
      final wards1 = Wards(id: '1', name: 'Test', level: 'High');
      final wards2 = Wards(id: '1', name: 'Test', level: 'High');
      final wards3 = Wards(id: '2', name: 'Test', level: 'High');

      expect(wards1, equals(wards2));
      expect(wards1 == wards3, isFalse);
    });

    test('hashCode', () {
      final wards1 = Wards(id: '1', name: 'Test', level: 'High');
      final wards2 = Wards(id: '1', name: 'Test', level: 'High');
      final wards3 = Wards(id: '2', name: 'Test', level: 'High');

      expect(wards1.hashCode, equals(wards2.hashCode));
      expect(wards1.hashCode == wards3.hashCode, isFalse);
    });

    test('toString()', () {
      final wards = Wards(id: '1', name: 'Test', level: 'High');
      final stringRepresentation = wards.toString();
      final expectedString = 'Wards(id: 1, name: Test, level: High)';

      expect(stringRepresentation, equals(expectedString));
    });

    test('toMap() and fromMap()', () {
      final wards = Wards(id: '1', name: 'Test', level: 'High');
      final map = wards.toMap();
      final decodedWards = Wards.fromMap(map);

      expect(decodedWards, equals(wards));
    });
  });
}
