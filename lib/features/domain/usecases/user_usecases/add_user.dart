import '../../../../core/helpers/one_of.dart';
import '../../../../core/helpers/usecase.dart';
import '../../entities/user_entity.dart';
import '../../params/user_params.dart';
import '../../repositories/user_repository.dart';

class AddUser implements Usecase<OneOf<UserEntity, String>, UserParams> {
  final UserRepository repo;

  AddUser(this.repo);

  @override
  Future<OneOf<UserEntity, String>> exec(UserParams params) {
    return repo.addUser(params);
  }
}
