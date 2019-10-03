import 'dart:ui';
import 'package:mqtt_client/mqtt_client.dart' as mqtt;
import 'dart:async';
import 'package:rxdart/rxdart.dart';


class MqttBloc {

double co = 30;

final  _streamController = BehaviorSubject();

Sink get input => _streamController.sink;

Stream get output => _streamController.stream;


String broker = 'soldier.cloudmqtt.com';
int port = 11953;
String username = 'tfsewodt';
String passwd = 'Z-TY0IZGhyd7';
String clientIdentifier = 'android';

mqtt.MqttClient client;
mqtt.MqttConnectionState connectionState;

StreamSubscription subscription;

void subscribeToTopic(String topic) {
  if (connectionState == mqtt.MqttConnectionState.connected) {
    print('[MQTT client] Subscribing to ${topic.trim()}');
    client.subscribe(topic, mqtt.MqttQos.exactlyOnce);
  }
}

void connect() async {
  client = mqtt.MqttClient(broker, '');
  client.port = port;
  client.logging(on: true);
  client.keepAlivePeriod = 30;
  client.onDisconnected = onDisconnected;
  final mqtt.MqttConnectMessage connMess = mqtt.MqttConnectMessage()
      .withClientIdentifier(clientIdentifier)
      .startClean()
      .keepAliveFor(30)
      .withWillQos(mqtt.MqttQos.atMostOnce);
  print('[MQTT client] MQTT client connecting....');
  client.connectionMessage = connMess;
  try {
    await client.connect(username, passwd);
  } catch (e) {
    print(e);
    disconnect();
  }

  if (client.connectionState == mqtt.MqttConnectionState.connected) {
    print('[MQTT client] connected');
    connectionState = client.connectionState;
  } else {
    disconnect();
  }

  subscription = client.updates.listen(onMessage);

  subscribeToTopic("temp");
}

void disconnect() {
  print('[MQTT client] _disconnect()');
  client.disconnect();
  onDisconnected();
}

void onDisconnected() {
  print('[MQTT client] _onDisconnected');
  connectionState = client.connectionState;
  client = null;
  subscription.cancel();
  subscription = null;
  print('[MQTT client] MQTT client disconnected');
}

void onMessage(List<mqtt.MqttReceivedMessage> event) {
  print(event.length);
  final mqtt.MqttPublishMessage recMess =
      event[0].payload as mqtt.MqttPublishMessage;
  final String message =
      mqtt.MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
  co = double.parse(message);
  input.add(co);
}


}
