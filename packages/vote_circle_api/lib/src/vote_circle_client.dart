import 'package:authentication_repository/authentication_repository.dart';
import 'package:graphql/client.dart';
import 'package:logger/logger.dart';
import 'package:vote_circle_api/src/graph/circle.graphql.dart';
import 'package:vote_circle_api/vote_circle_api.dart';

class QueryCircleFailure implements Exception {}

class VoteCircleApiClient {
  VoteCircleApiClient({required authenticationRepository})
      : _authenticationRepository = authenticationRepository;

  final GraphQLCache _cache = GraphQLCache();
  final AuthenticationRepository _authenticationRepository;

  GraphQLClient _client() {
    // final _httpLink = HttpLink(
    //   'http://127.0.0.1:8081/query',
    // );

    final _httpLink = HttpLink(
      'https://vote-circle.dev.vyf.passoavanti.eu/query',
    );

    final _authLink = AuthLink(
      getToken: () async => 'Bearer ${_authenticationRepository.accessToken}',
    );

    Link _link = _authLink.concat(_httpLink);

    return GraphQLClient(
      cache: _cache,
      link: _link,
    );
  }

  Future<Circle> circle(int id) async {
    var logger = Logger();

    try {
      final client = _client();
      final result = await client.query$circle(
        Options$Query$circle(
          variables: Variables$Query$circle(id: id),
        ),
      );

      if (result.hasException) {
        throw QueryCircleFailure();
      }

      final graphCircle = result.parsedData!.circle;

      final List<Vote>? votes = graphCircle.votes?.map((vote) {
            return Vote(
              id: vote.id,
              voter: vote.voter,
              elected: vote.elected,
            );
          }).toList() ??
          null;

      final List<CircleVoter> voters = graphCircle.voters.map((voter) {
        return CircleVoter(
          id: voter.id,
          voter: voter.voter,
          committed: voter.committed,
          rejected: voter.rejected,
          createdAt:
              voter.createdAt != null ? DateTime.parse(voter.createdAt!) : null,
          updatedAt:
              voter.updatedAt != null ? DateTime.parse(voter.updatedAt!) : null,
        );
      }).toList();

      return Circle(
        id: graphCircle.id,
        name: graphCircle.name,
        votes: votes,
        voters: voters,
        private: graphCircle.private,
        createdFrom: graphCircle.createdFrom,
      );
    } catch (e) {
      logger.e(e);
      throw QueryCircleFailure();
    }
  }
}
