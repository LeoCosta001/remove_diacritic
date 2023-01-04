import 'package:flutter_test/flutter_test.dart';

import 'package:remove_diacritic/remove_diacritic.dart';

void main() {
  group('General tests.', () {
    test('Multi line.', () {
      const quote = 'My example test '
          'my example test.';
      expect(removeDiacritics(quote), quote);
    });

    test('Some letters.', () {
      expect(removeDiacritics('ÀÁÂÃÄÅǺĀĂĄǍΑΆẢẠẦẪẨẬẰẮẴẲẶА'), 'AAAAAAAAAAAΑAAAAAAAAAAAAА');
      expect(removeDiacritics('àáâãåǻāăąǎαάảạầấẫẩậằắẵẳặа'), 'aaaaaaaaaaaaaaaaaaaaaaaaа');
      expect(removeDiacritics('ÈÉÊËĒĔĖĘĚΕΈẼẺẸỀẾỄỂỆЕ'), 'EEEEEEEEEΕEEEEEEEEEЕ');
      expect(removeDiacritics('èéêëēĕėęěẽẻẹềếễểệе'), 'eeeeeeeeeeeeeeeeeе');
      expect(removeDiacritics('ÌÍÎÏĨĪĬǏĮİΊΙΪỈỊ'), 'IIIIIIIIIIIΙIII');
      expect(removeDiacritics('ìíîïĩīĭǐįıỉịї'), 'iiiiiiiiiiiii');
      expect(removeDiacritics('ÒÓÔÕŌŎǑŐƠØǾΟΌỎỌỒỐỖỔỘỜỚỠỞỢО'), 'OOOOOOOOOOOΟOOOOOOOOOOOOOО');
      expect(removeDiacritics('òóôõōŏǒőơøǿοόỏọồốỗổộờớỡởợо'), 'oooooooooooοoooooooooooooо');
      expect(removeDiacritics('ÙÚÛŨŪŬŮŰŲƯǓǕǗǙǛŨỦỤỪỨỮỬỰ'), 'UUUUUUUUUUUUUUUUUUUUUUU');
      expect(removeDiacritics('ùúûũūŭůűųưǔǖǘǚǜủụừứữửự'), 'uuuuuuuuuuuuuuuuuuuuuu');
      expect(removeDiacritics('ÝŸŶΥΎΫỲỸỶỴ'), 'YYYΥYYYYYY');
      expect(removeDiacritics('ýÿŷỳỹỷỵ'), 'yyyyyyy');
      expect(removeDiacritics('ĹĻĽĿŁ'), 'LLLLL');
      expect(removeDiacritics('ĺļľŀł'), 'lllll');
      expect(removeDiacritics('ÇĆĈĊČ'), 'CCCCC');
      expect(removeDiacritics('çćĉċč'), 'ccccc');
    });
  });
}
