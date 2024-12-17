import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../external-values/i_external_values.dart';
import 'iSocket.dart';

class SocketManager implements ISocketManager {
  SocketManager.create(IExternalValues externalValues)
      : _socket = IO.io(externalValues.getBaseUrl(), <String, dynamic>{
          "transports": ["websocket"],
          "autoConnect": false,
        }).connect();

  @override
  IO.Socket get() {
    return _socket;
  }

  final IO.Socket _socket;
}
