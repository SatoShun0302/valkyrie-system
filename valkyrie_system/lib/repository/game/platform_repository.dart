import 'package:valkyrie_system/repository/game/abstract/base_platform_repository.dart';

class PlatformRepository extends BasePlatformRepository {
  @override
  Future<List<dynamic>> fetchPlatformList() async {
    var response = await postApi('https://aropm7y6gv4qmd5lbv72dsv7sa0lqgad.lambda-url.ap-northeast-1.on.aws/');
    return getBody(response);
  }

}