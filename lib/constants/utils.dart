import 'package:intl/intl.dart';

String parseDateTime(String dateTimeString) {
  // Gelen tarih formatı
  String inputFormat = 'yyyy-MM-ddTHH:mm:ssZ';

  // Hedef tarih formatı
  String outputFormat =
      'dd.MM.yyyy HH:mm'; // Örnek olarak farklı bir format seçildi

  // DateTime nesnesine dönüştür
  DateTime dateTime = DateTime.parse(dateTimeString);

  // Hedef tarih formatına çevir
  String formattedDateTime = DateFormat(outputFormat).format(dateTime);

  return formattedDateTime;
}
