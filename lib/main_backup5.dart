import 'dart:async';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_browser_client.dart';

void main() async {
  // create a new MqttBrowserClient instance
  final client = MqttBrowserClient('wss://mqtt.eclipseprojects.io/mqtt', '');

  // set the port
  client.port = 443;

  // configure the client
  client.logging(on: true);
  client.keepAlivePeriod = 30;
  client.onConnected = () => print('Client connected');
  client.onDisconnected = () => print('Client disconnected');

  try {
    await client.connect();
  } catch (e) {
    print("==> something not right ");
    print(e);
  }
  // connect the client

  print("ok");

  // subscribe to a topic
  // const topic = 'test/topic';
  // client.subscribe(topic, MqttQos.atMostOnce);

  // publish a message to the topic every 1 second
  // Timer.periodic(Duration(seconds: 1), (_) {
  //   final message = 'Hello, world!';
  // final Uint8Buffer payload = Uint8Buffer.fromList(message.codeUnits);

  // client.publishMessage(topic, MqttQos.atLeastOnce, message.codeUnits);
  // });
}
