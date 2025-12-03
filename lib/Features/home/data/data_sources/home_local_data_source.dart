import 'package:bookly/Features/home/Domain/entities/book_entity.dart';
import 'package:bookly/constans.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeatureBooks({int pageNumber=0});
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeatureBooks({int pageNumber=0}) {
    int startIndex=pageNumber*10;
    int endIndex=(pageNumber+1)*10;
    var box = Hive.box<BookEntity>(KFeaturedBox);
    int length=box.values.length;
    if(startIndex>=length||endIndex>length){
      return [];
    }
    return box.values.toList().sublist(startIndex,endIndex);
  }

  @override
  List<BookEntity> fetchNewestBooks() {
   var box=Hive.box<BookEntity>(KNewestBox);
   return box.values.toList(); 
  }
}
