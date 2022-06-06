import 'package:vote_circle_api/vote_circle_api.dart' as voteCircleApi;
import 'package:vote_circle_repository/vote_circle_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';

class CircleQueryFailure implements Exception {}

class VoteCircleRepository {
  VoteCircleRepository({
    required AuthenticationRepository authenticationRepository,
    voteCircleApi.VoteCircleApiClient? voteCircleApiClient,
  }) : _voteCircleApiClient = voteCircleApiClient ??
            voteCircleApi.VoteCircleApiClient(
                authenticationRepository: authenticationRepository);

  final voteCircleApi.VoteCircleApiClient _voteCircleApiClient;

  Future<Circle> circle(id) async {
    try {
      final circle = await _voteCircleApiClient.circle(id);

      final List<Vote>? votes = circle.votes?.map((vote) {
            return Vote(
              id: vote.id,
              voter: vote.voter,
              elected: vote.elected,
            );
          }).toList() ??
          null;

      final List<CircleVoter> voters = circle.voters.map((voter) {
        return CircleVoter(
          id: voter.id,
          voter: voter.voter,
          committed: voter.committed,
          rejected: voter.rejected,
          createdAt: voter.createdAt,
          updatedAt: voter.updatedAt,
        );
      }).toList();

      return Circle(
        id: circle.id,
        name: circle.name,
        votes: votes,
        voters: voters,
        private: circle.private,
        createdFrom: circle.createdFrom,
      );
    } catch (e) {
      throw CircleQueryFailure();
    }
  }
}
