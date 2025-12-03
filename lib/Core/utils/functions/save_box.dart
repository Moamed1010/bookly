  import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBoxData(List<BookEntity> books,String boxName) {
    var box=Hive.box<BookEntity>(boxName);
    box.addAll(books);
  }
  