import 'package:flutter_test/flutter_test.dart';

import 'package:remove_diacritic/remove_diacritic.dart';

void main() {
  group('General tests.', () {
    test('Multi line.', () {
      const quote = 'My example test '
          'my example test.';
      expect(removeDiacritic(quote), quote);
    });

    test('Some letters.', () {
      expect(removeDiacritic('ÀÁÂÃÄÅǺĀĂĄǍΑΆẢẠẦẪẨẬẰẮẴẲẶА'), 'AAAAAAAAAAAΑAAAAAAAAAAAAА');
      expect(removeDiacritic('àáâãåǻāăąǎαάảạầấẫẩậằắẵẳặа'), 'aaaaaaaaaaaaaaaaaaaaaaaaа');
      expect(removeDiacritic('ÈÉÊËĒĔĖĘĚΕΈẼẺẸỀẾỄỂỆЕ'), 'EEEEEEEEEΕEEEEEEEEEЕ');
      expect(removeDiacritic('èéêëēĕėęěẽẻẹềếễểệе'), 'eeeeeeeeeeeeeeeeeе');
      expect(removeDiacritic('ÌÍÎÏĨĪĬǏĮİΊΙΪỈỊ'), 'IIIIIIIIIIIΙIII');
      expect(removeDiacritic('ìíîïĩīĭǐįıỉịї'), 'iiiiiiiiiiiii');
      expect(removeDiacritic('ÒÓÔÕŌŎǑŐƠØǾΟΌỎỌỒỐỖỔỘỜỚỠỞỢО'), 'OOOOOOOOOOOΟOOOOOOOOOOOOOО');
      expect(removeDiacritic('òóôõōŏǒőơøǿοόỏọồốỗổộờớỡởợо'), 'oooooooooooοoooooooooooooо');
      expect(removeDiacritic('ÙÚÛŨŪŬŮŰŲƯǓǕǗǙǛŨỦỤỪỨỮỬỰ'), 'UUUUUUUUUUUUUUUUUUUUUUU');
      expect(removeDiacritic('ùúûũūŭůűųưǔǖǘǚǜủụừứữửự'), 'uuuuuuuuuuuuuuuuuuuuuu');
      expect(removeDiacritic('ÝŸŶΥΎΫỲỸỶỴ'), 'YYYΥYYYYYY');
      expect(removeDiacritic('ýÿŷỳỹỷỵ'), 'yyyyyyy');
      expect(removeDiacritic('ĹĻĽĿŁ'), 'LLLLL');
      expect(removeDiacritic('ĺļľŀł'), 'lllll');
      expect(removeDiacritic('ÇĆĈĊČ'), 'CCCCC');
      expect(removeDiacritic('çćĉċč'), 'ccccc');
    });
  });
}
