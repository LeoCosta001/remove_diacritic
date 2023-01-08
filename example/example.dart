import 'package:remove_diacritic/remove_diacritic.dart';

main() {
  print(removeDiacritic('ÀÁÂÃÄÅǺĀĂĄǍΑΆẢẠẦẪẨẬẰẮẴẲẶА')); // prints: 'AAAAAAAAAAAΑAAAAAAAAAAAAА'
  print(removeDiacritic('àáâãåǻāăąǎαάảạầấẫẩậằắẵẳặа')); // prints: 'aaaaaaaaaaaaaaaaaaaaaaaaа'
  print(removeDiacritic('ÈÉÊËĒĔĖĘĚΕΈẼẺẸỀẾỄỂỆЕ')); // prints: 'EEEEEEEEEΕEEEEEEEEEЕ'
  print(removeDiacritic('èéêëēĕėęěẽẻẹềếễểệе')); // prints: 'eeeeeeeeeeeeeeeeeе'
  print(removeDiacritic('ÌÍÎÏĨĪĬǏĮİΊΙΪỈỊ')); // prints: 'IIIIIIIIIIIΙIII'
  print(removeDiacritic('ìíîïĩīĭǐįıỉịї')); // prints: 'iiiiiiiiiiiii'
  print(removeDiacritic('ÒÓÔÕŌŎǑŐƠØǾΟΌỎỌỒỐỖỔỘỜỚỠỞỢО')); // prints: 'OOOOOOOOOOOΟOOOOOOOOOOOOOО'
  print(removeDiacritic('òóôõōŏǒőơøǿοόỏọồốỗổộờớỡởợо')); // prints: 'oooooooooooοoooooooooooooо'
  print(removeDiacritic('ÙÚÛŨŪŬŮŰŲƯǓǕǗǙǛŨỦỤỪỨỮỬỰ')); // prints: 'UUUUUUUUUUUUUUUUUUUUUUU'
  print(removeDiacritic('ùúûũūŭůűųưǔǖǘǚǜủụừứữửự')); // prints: 'uuuuuuuuuuuuuuuuuuuuuu'
  print(removeDiacritic('ÝŸŶΥΎΫỲỸỶỴ')); // prints: 'YYYΥYYYYYY'
  print(removeDiacritic('ýÿŷỳỹỷỵ')); // prints: 'yyyyyyy'
  print(removeDiacritic('ĹĻĽĿŁ')); // prints: 'LLLLL'
  print(removeDiacritic('ĺļľŀł')); // prints: 'lllll'
  print(removeDiacritic('ÇĆĈĊČ')); // prints: 'CCCCC'
  print(removeDiacritic('çćĉċč')); // prints: 'ccccc'
}
