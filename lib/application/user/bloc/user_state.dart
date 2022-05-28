part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState._({this.metaUser});

  const UserState.metaDataLoaded(MetaUser metaUser)
      : this._(metaUser: metaUser);

  final MetaUser? metaUser;

  @override
  List<Object?> get props => [metaUser];
}
