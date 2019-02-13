import 'package:flutter_example/entities/BaseTimelineEntity.dart';
import 'package:flutter_example/entities/ProductEntity.dart';

class TimelineRecommendedEntity extends BaseTimelineEntity {
  List<ProductEntity> products;

  TimelineRecommendedEntity({this.products});

  factory TimelineRecommendedEntity.fromJsonArray(jsonArray) {
    try {
      var items = jsonArray['recommend'] as List;
      List<ProductEntity> ps =
          items.map((data) => new ProductEntity.fromJson(data)).toList();
      return new TimelineRecommendedEntity(products: ps);
    } catch (e) {
      print('TimelineRecommendedEntity ERROR ' + e.toString());
      throw e;
    }
  }
}
