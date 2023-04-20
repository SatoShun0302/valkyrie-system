import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/model/user/blocked_user.dart';
import 'package:valkyrie_system/repository/user/abstract/base_user_repository.dart';

class BlockListNotifier extends StateNotifier<List<BlockedUser>> {
  BlockListNotifier(this._userRepository) : super(const []);

  final BaseUserRepository _userRepository;

  returnEmptyList() {
    return const [];
  }

  Future<List<BlockedUser>> fetchBlockedUserList({String platformId = '', String searchDateStart = '', String searchDateEnd = ''}) async {
    var jsonBody = {'platformId': platformId, 'searchDateStart': searchDateStart, 'searchDateEnd':searchDateEnd};
    var list = await _userRepository.fetchBlockList(jsonBody);
    state = [...list];
    return list;
  }
}