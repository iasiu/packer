import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/client_service.dart';
import 'package:dartz/dartz.dart';
import 'package:packer/models/models.dart';

@lazySingleton
class Repository {
  Repository(this.cs);

  final ClientService cs;

  Future<Either<RepositoryException, List<DeliveryCompany>>>
      getDeliveryCompanies() async {
    try {
      final res = await cs.get('/deliveryCompanies');
      final deliveryCompanies = (res.data as List<Object?>)
          .map((e) => DeliveryCompany.fromJson(e as Map<String, dynamic>))
          .toList();
      return right(deliveryCompanies);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(message: e.message));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, List<Receiver>>> getReceivers() async {
    try {
      final res = await cs.get('/receivers');
      final receivers = (res.data as List<Object?>)
          .map((e) => Receiver.fromJson(e as Map<String, dynamic>))
          .toList();
      return right(receivers);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(message: e.message));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, List<Sender>>> getSenders() async {
    try {
      final res = await cs.get('/senders');
      final senders = (res.data as List<Object?>)
          .map((e) => Sender.fromJson(e as Map<String, dynamic>))
          .toList();
      return right(senders);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(message: e.message));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, List<Pack>>> getPacks() async {
    try {
      final res = await cs.get('/packs');
      final packs = (res.data as List<Object?>)
          .map(
            (e) => Pack.fromJson(
                (e as Map<String, dynamic>)..['runtimeType'] = 'from'),
          )
          .toList();
      return right(packs);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(message: e.message));
      }
      return left(RepositoryException());
    }
  }
}

class RepositoryException {
  RepositoryException({this.message});

  final String? message;
}
