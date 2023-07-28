
import 'package:dartz/dartz.dart';
import '../core/failure/main_failure.dart';
import '../models/artwork_details.dart';

abstract class ICompleteArtworkRepo {
  Future<Either<MainFailure, Stream<List<ArtworkDetails>>>>  getCompleteArtworks();
}