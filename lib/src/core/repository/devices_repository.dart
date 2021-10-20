import 'package:mobile/src/core/entities/all.dart';

abstract class DevicesRepository {
  Future<List<Devices>> getAllDevices();
}
