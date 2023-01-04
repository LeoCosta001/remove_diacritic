import 'package:remove_diacritic/remove_diacritic.dart';

main() {
  print(removeDiacritics('ÀÁÂÃÄÅǺĀĂĄǍΑΆẢẠẦẪẨẬẰẮẴẲẶА')); // prints: 'AAAAAAAAAAAΑAAAAAAAAAAAAА'
  print(removeDiacritics('àáâãåǻāăąǎαάảạầấẫẩậằắẵẳặа')); // prints: 'aaaaaaaaaaaaaaaaaaaaaaaaа'
  print(removeDiacritics('ÈÉÊËĒĔĖĘĚΕΈẼẺẸỀẾỄỂỆЕ')); // prints: 'EEEEEEEEEΕEEEEEEEEEЕ'
  print(removeDiacritics('èéêëēĕėęěẽẻẹềếễểệе')); // prints: 'eeeeeeeeeeeeeeeeeе'
  print(removeDiacritics('ÌÍÎÏĨĪĬǏĮİΊΙΪỈỊ')); // prints: 'IIIIIIIIIIIΙIII'
  print(removeDiacritics('ìíîïĩīĭǐįıỉịї')); // prints: 'iiiiiiiiiiiii'
  print(removeDiacritics('ÒÓÔÕŌŎǑŐƠØǾΟΌỎỌỒỐỖỔỘỜỚỠỞỢО')); // prints: 'OOOOOOOOOOOΟOOOOOOOOOOOOOО'
  print(removeDiacritics('òóôõōŏǒőơøǿοόỏọồốỗổộờớỡởợо')); // prints: 'oooooooooooοoooooooooooooо'
  print(removeDiacritics('ÙÚÛŨŪŬŮŰŲƯǓǕǗǙǛŨỦỤỪỨỮỬỰ')); // prints: 'UUUUUUUUUUUUUUUUUUUUUUU'
  print(removeDiacritics('ùúûũūŭůűųưǔǖǘǚǜủụừứữửự')); // prints: 'uuuuuuuuuuuuuuuuuuuuuu'
  print(removeDiacritics('ÝŸŶΥΎΫỲỸỶỴ')); // prints: 'YYYΥYYYYYY'
  print(removeDiacritics('ýÿŷỳỹỷỵ')); // prints: 'yyyyyyy'
  print(removeDiacritics('ĹĻĽĿŁ')); // prints: 'LLLLL'
  print(removeDiacritics('ĺļľŀł')); // prints: 'lllll'
  print(removeDiacritics('ÇĆĈĊČ')); // prints: 'CCCCC'
  print(removeDiacritics('çćĉċč')); // prints: 'ccccc'
}
