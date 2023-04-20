import 'package:valkyrie_system/repository/base_repository.dart';

abstract class BasePlatformRepository extends BaseRepository{
  /// プラットフォーム一覧を取得する
  Future<List<dynamic>> fetchPlatformList();
}