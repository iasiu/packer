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
          message: e.response?.data ?? e.response?.statusMessage ?? e.message,
        ));
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
        try {
          final res = e.response?.data as Map<String, dynamic>;
          if (res.containsKey('barcode')) {
            return left(RepositoryException(
              message: (res['barcode'] as List<dynamic>)[0] as String?,
            ));
          }
        } catch (_, __) {
          return left(RepositoryException(
            message: e.response?.data ?? e.response?.statusMessage ?? e.message,
          ));
        }
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, Pack>> getPack(String barcode) async {
    try {
      final res = await cs.get('/pack/' + barcode);
      final package = Pack.fromJson((res.data as Map<String, dynamic>));
      return right(package);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(
          message: e.response?.data ?? e.response?.statusMessage ?? e.message,
        ));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, void>> passPack(int id) async {
    try {
      await cs.get('/pass/' + id.toString());
      return right(null);
    } catch (e, _) {
      if (e is DioError) {
        String? serverMessage;
        try {
          serverMessage = e.response?.data;
        } catch (_, __) {}
        final String message =
            serverMessage ?? e.response?.statusMessage ?? e.message;
        return left(RepositoryException(message: message));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, Sender>> addSender(
      SenderWrite sender) async {
    try {
      final res = await cs.post(path: '/senders/', data: sender.toJson());
      final s = Sender.fromJson(res.data as Map<String, dynamic>);
      return right(s);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(
          message: e.response?.data ?? e.response?.statusMessage ?? e.message,
        ));
      }
      return left(RepositoryException());
    }
  }

  Future<Either<RepositoryException, Receiver>> addReceiver(
      ReceiverWrite receiver) async {
    try {
      final res = await cs.post(path: '/receivers/', data: receiver.toJson());
      final r = Receiver.fromJson(res.data as Map<String, dynamic>);
      return right(r);
    } catch (e, _) {
      if (e is DioError) {
        return left(RepositoryException(
          message: e.response?.data ?? e.response?.statusMessage ?? e.message,
        ));
      }
      return left(RepositoryException());
    }
  }
}

class RepositoryException {
  RepositoryException({this.message});

  final String? message;
}
