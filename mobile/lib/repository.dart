import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/client_service.dart';
import 'package:dartz/dartz.dart';
import 'package:packer/models/models.dart';

@lazySingleton
class Repository {
  Repository(this.cs);

  final ClientService cs;

  Future<List<DeliveryCompany>> getDeliveryCompanies() async {
    final res = await cs.get('/deliveryCompanies');
    final deliveryCompanies = (res.data as List<Object?>)
        .map((e) => DeliveryCompany.fromJson(e as Map<String, dynamic>))
        .toList();
    return deliveryCompanies;
  }

  Future<List<Receiver>> getReceivers() async {
    final res = await cs.get('/receivers');
    final receivers = (res.data as List<Object?>)
        .map((e) => Receiver.fromJson(e as Map<String, dynamic>))
        .toList();
    return receivers;
  }

  Future<List<Sender>> getSenders() async {
    final res = await cs.get('/senders');
    final senders = (res.data as List<Object?>)
        .map((e) => Sender.fromJson(e as Map<String, dynamic>))
        .toList();
    return senders;
  }

  Future<Either<RepositoryException, List<Pack>>> getPacks() async {
    try {
      final res = await cs.get('/packs');
      final packs = (res.data as List<Object?>)
          .map(
            (e) => Pack.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
      return right(packs);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(
            message:
                e.response?.data ?? e.response?.statusMessage ?? e.message));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, void>> addPackage(PackWrite pack) async {
    try {
      await cs.post(path: '/packs/', data: pack.toJson());
      return right(null);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(
            message:
                e.response?.data ?? e.response?.statusMessage ?? e.message));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, void>> passPackage(String barcode) async {
    try {
      await cs.get('/pass/' + barcode);
      return right(null);
    } catch (e, _) {
      if (e is DioError) {
        String? serverMessage;
        try {
          serverMessage = e.response?.data;
        } catch (_, __) {}
        final String message = serverMessage ??
            e.response?.statusMessage ??
            e.message;
        return left(RepositoryException(message: message));
      }
      return left(RepositoryException());
    }
  }
}

class RepositoryException {
  RepositoryException({this.message});

  final String? message;
}
