import 'package:test/test.dart';
import 'package:scrabble_score/scrabble_score.dart';

void main() {
  group('Scrabble score', () {
    group('should return a score of 0 for', () {
      test('empty input', () {
        expect(score(''), equals(0));
      }, skip: true);
    });

    group('should return the appropriate score for', () {
      test('lowercase letters', () {
        expect(score('a'), equals(1));
      }, skip: false);

      test('uppercase letters', () {
        expect(score('A'), equals(1));
      }, skip: false);

      test('valuable letters', () {
        expect(score('f'), equals(4));
      }, skip: false);

      test('english-like word', () {
        expect(score('pinata'), equals(8));
      }, skip: false);

      test('long, mixed-case word', () {
        expect(score('OxyphenButazone'), equals(41));
      }, skip: false);

      test('medium, valuable word', () {
        expect(score('quirky'), equals(22));
      }, skip: false);

      test('medium word', () {
        expect(score('street'), equals(6));
      }, skip: false);

      test('short, valuable word', () {
        expect(score('zoo'), equals(12));
      }, skip: false);

      test('short word', () {
        expect(score('at'), equals(2));
      }, skip: false);

      test('a word containing one of every letter of the alphabet', () {
        expect(score('abcdefghijklmnopqrstuvwxyz'), equals(87));
      }, skip: false);

      test('a word containing one of every letter of the alphabet in reverse',
          () {
        expect(score('zyxwvutsrqponmlkjihgfedcba'), equals(87));
      }, skip: false);
    });
  });
}
