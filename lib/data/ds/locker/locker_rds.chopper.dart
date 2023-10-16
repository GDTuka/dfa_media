// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_rds.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$LockerRDS extends LockerRDS {
  _$LockerRDS([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LockerRDS;

  @override
  Future<Response<List<Locker>>> getLockers() {
    final Uri $url = Uri.parse('ozon671game/demo/db');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Locker>, Locker>($request);
  }
}
