import 'package:market_place/core/resourses/String_manager.dart';
import 'package:market_place/core/resourses/assets_manager.dart';
import 'package:market_place/model/Catogerie_home.dart';


import '../../model/catogorie_top_sellor.dart';
import '../../model/catogorie_trending.dart';

class constants{

 static List<CatogorieHome> catogerieList=[
    CatogorieHome(stringManager.Smusic, assetsManager.imageMusic),
    CatogorieHome(stringManager.SArt, assetsManager.imageART),
    CatogorieHome(stringManager.Svirtual, assetsManager.imageVirtual),
  ];

 static List<Trending> TrendingList=[
   Trending(stringManager.S3D_Art, assetsManager.imageCollection1),
   Trending(stringManager.S3D_Art, assetsManager.imageCollection2),
   Trending(stringManager.S3D_Art, assetsManager.imageCollection3),
 ];
 static List<CatogorieTopSellor> TopSellorList=[
   CatogorieTopSellor(stringManager.S3D_Art, assetsManager.imageTop1),
   CatogorieTopSellor(stringManager.S3D_Art, assetsManager.imageTop2),
   CatogorieTopSellor(stringManager.S3D_Art, assetsManager.imageTop3),
 ];

}