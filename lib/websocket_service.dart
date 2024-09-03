// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel channel;
//
//   WebSocketService(String url) : channel = WebSocketChannel.connect(Uri.parse(url));
//
//   void sendRoomNumber(int roomNumber) {
//     try {
//       final message = '{"op": "publish", "topic": "/room_number", "msg": {"data": $roomNumber}}';
//
//       channel.sink.add(message);
//     } catch (e) {
//       print('Error sending message: $e');
//     }
//   }
//
//   void close() {
//     channel.sink.close();
//   }
// }

////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'package:web_socket_channel/status.dart' as status;
//
// class WebSocketService {
//   final String url;
//   WebSocketChannel? _channel;
//   bool _isConnected = false;
//
//   WebSocketService(this.url) {
//     _connect();
//   }
//
//   void _connect() {
//     if (_isConnected) return; // Avoid multiple connection attempts
//
//     try {
//       _channel = WebSocketChannel.connect(Uri.parse(url));
//       _isConnected = true;
//       print('Connected to $url');
//
//       // Listen for messages
//       _channel!.stream.listen(
//             (message) {
//           print('Received message: $message');
//         },
//         onError: (error) {
//           print('WebSocket error: $error');
//           _reconnect();
//         },
//         onDone: () {
//           print('WebSocket connection closed.');
//           _isConnected = false;
//           _reconnect();
//         },
//       );
//     } catch (e) {
//       print('Connection error: $e');
//       _reconnect();
//     }
//   }
//
//   void sendRoomNumber(int roomNumber) {
//     if (_isConnected) {
//       final message = '{"op": "publish", "topic": "/room_number", "msg": {"data": $roomNumber}}';
//       try {
//         _channel!.sink.add(message);
//       } catch (e) {
//         print('Error sending message: $e');
//         _reconnect();
//       }
//     } else {
//       print('WebSocket is not connected.');
//       _reconnect();
//     }
//   }
//
//   void _reconnect() {
//     if (!_isConnected) {
//       print('Attempting to reconnect...');
//       Future.delayed(Duration(seconds: 5), () {
//         _connect();
//       });
//     }
//   }
//
//   void close() {
//     _isConnected = false;
//     _channel?.sink.close(status.goingAway);
//     print('WebSocket connection closed.');
//   }
// }
/////////////////////////////////////////////////////////////////////////////////////////////////

// Good for registering to rosbridge
//
// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'package:flutter/foundation.dart';
//
// class WebSocketService {
//   final String url;
//   late WebSocketChannel _channel;
//
//   WebSocketService(this.url) {
//     _connect();
//   }
//
//   void _connect() {
//     _channel = WebSocketChannel.connect(Uri.parse(url));
//     _channel.stream.listen(
//           (message) {
//         if (kDebugMode) {
//           print('Received message: $message');
//         }
//       },
//       onError: (error) {
//         if (kDebugMode) {
//           print('WebSocket error: $error');
//         }
//       },
//       onDone: () {
//         if (kDebugMode) {
//           print('WebSocket connection closed');
//         }
//       },
//     );
//   }
//
//   void sendMessage(String message) {
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//   }
// }

////////////////////////////////////////////////////////////////////////////////////////////////

// Suitable for sending data to delvier topic ( room number and the product )

//
// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'package:flutter/foundation.dart';
// import 'dart:convert';
//
// class WebSocketService {
//   final String url;
//   late WebSocketChannel _channel;
//
//   WebSocketService(this.url) {
//     _channel = WebSocketChannel.connect(Uri.parse(url));
//   }
//
//   // Advertise a ROS topic with a specific type
//   void _advertiseTopic(String topic, String type) {
//     final advertiseMessage = {
//       'op': 'advertise',
//       'topic': topic,
//       'type': type,
//     };
//     _channel.sink.add(json.encode(advertiseMessage));
//   }
//
//   // Publish a message to a ROS topic
//   void publish(String topic, Map<String, dynamic> message) {
//     // Advertise the topic before publishing
//     _advertiseTopic(topic, 'navigation_goals/deliver'); // Replace with the actual type if needed
//
//     final publishMessage = {
//       'op': 'publish',
//       'topic': topic,
//       'msg': message,
//     };
//     _channel.sink.add(json.encode(publishMessage));
//   }
//
//   // Subscribe to a ROS topic
//   void subscribe(String topic, Function(dynamic) onMessage) {
//     final subscribeMessage = {
//       'op': 'subscribe',
//       'topic': topic,
//     };
//     _channel.sink.add(json.encode(subscribeMessage));
//
//     _channel.stream.listen((message) {
//       final decodedMessage = json.decode(message);
//       if (decodedMessage['topic'] == topic) {
//         onMessage(decodedMessage['msg']);
//       }
//     });
//   }
//
//   void close() {
//     _channel.sink.close();
//   }
// }
///////////////////////////////////////////////////////////////////////////////////////////////

// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'dart:convert';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//
//   WebSocketService(String url) : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _channel.stream.listen((message) {
//       _handleMessage(message);
//     });
//   }
//
//   // Advertise a ROS topic with a specific type
//   void _advertiseTopic(String topic, String type) {
//     final advertiseMessage = {
//       'op': 'advertise',
//       'topic': topic,
//       'type': type,
//     };
//     _channel.sink.add(jsonEncode(advertiseMessage));
//   }
//
//   // Publish a message to a ROS topic
//   void publish(String topic, Map<String, dynamic> message) {
//     // Advertise the topic before publishing
//     _advertiseTopic(topic, 'navigation_goals/deliver' ); // Replace 'std_msgs/Int32' with the actual type if needed
//
//     final publishMessage = {
//       'op': 'publish',
//       'topic': topic,
//       'msg': message,
//     };
//     _channel.sink.add(jsonEncode(publishMessage));
//   }
//
//   // Subscribe to a ROS topic
//   void subscribe(String topic, Function(dynamic) onMessage) {
//     // Advertise the topic before subscribing
//     _advertiseTopic(topic, 'std_msgs/Int32'); // Replace 'std_msgs/Int32' with the actual type if needed
//
//     final subscribeMessage = {
//       'op': 'subscribe',
//       'topic': topic,
//     };
//     _channel.sink.add(jsonEncode(subscribeMessage));
//
//     // Store the callback for handling messages
//     subscriptions[topic] = onMessage;
//   }
//
//   void close() {
//     _channel.sink.close();
//   }
//
//   // Handle incoming messages
//   void _handleMessage(dynamic message) {
//     final decodedMessage = jsonDecode(message);
//     final String op = decodedMessage['op'];
//     final String topic = decodedMessage['topic'];
//     final dynamic msg = decodedMessage['msg'];
//
//     if (op == 'publish' && subscriptions.containsKey(topic)) {
//       subscriptions[topic]!(msg);
//     }
//   }
//
//   // Map to store subscription callbacks
//   final Map<String, Function(dynamic)> subscriptions = {};
// }
/////////////////////////////////////////////////////////////////////////////////


// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'dart:convert';
//
// class WebSocketService {
//   final String url;
//   late WebSocketChannel _channel;
//
//   WebSocketService(this.url) {
//     _channel = WebSocketChannel.connect(Uri.parse(url));
//     // Pre-advertise topics
//     _advertiseTopic('/deliver', 'navigation_goals/deliver');
//     _advertiseTopic('/goal_reach', 'std_msgs/Int32');
//   }
//
//   void _advertiseTopic(String topic, String type) {
//     final advertiseMessage = {
//       'op': 'advertise',
//       'topic': topic,
//       'type': type,
//     };
//     _channel.sink.add(json.encode(advertiseMessage));
//   }
//
//   void publish(String topic, Map<String, dynamic> message) {
//     final publishMessage = {
//       'op': 'publish',
//       'topic': topic,
//       'msg': message,
//     };
//     _channel.sink.add(json.encode(publishMessage));
//   }
//
//   void subscribe(String topic, Function(dynamic) onMessage) {
//     final subscribeMessage = {
//       'op': 'subscribe',
//       'topic': topic,
//     };
//     _channel.sink.add(json.encode(subscribeMessage));
//
//     _channel.stream.listen((message) {
//       final decodedMessage = json.decode(message);
//       if (decodedMessage['topic'] == topic) {
//         onMessage(decodedMessage['msg']);
//       }
//     });
//   }
//
//   void close() {
//     _channel.sink.close();
//   }
// }
/////////////////////////////////////////////////////////////////////////////////////////////

// Perfect for empty page with robot image and open and close door and go home button

//
// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'package:flutter/foundation.dart';
// import 'dart:convert';
//
// class WebSocketService {
//   final String url;
//   late WebSocketChannel _channel;
//
//   WebSocketService(this.url) {
//     _channel = WebSocketChannel.connect(Uri.parse(url));
//     _preAdvertiseTopics();
//   }
//
//   void _preAdvertiseTopics() {
//     _advertiseTopic('/deliver', 'navigation_goals/deliver');
//     _advertiseTopic('/goal_reach', 'std_msgs/Int32');
//   }
//
//   void _advertiseTopic(String topic, String type) {
//     final advertiseMessage = {
//       'op': 'advertise',
//       'topic': topic,
//       'type': type,
//     };
//     _channel.sink.add(json.encode(advertiseMessage));
//   }
//
//   void publish(String topic, Map<String, dynamic> message) {
//     final publishMessage = {
//       'op': 'publish',
//       'topic': topic,
//       'msg': message,
//     };
//     _channel.sink.add(json.encode(publishMessage));
//   }
//
//   void subscribe(String topic, Function(dynamic) onMessage) {
//     final subscribeMessage = {
//       'op': 'subscribe',
//       'topic': topic,
//     };
//     _channel.sink.add(json.encode(subscribeMessage));
//
//     _channel.stream.listen((message) {
//       final decodedMessage = json.decode(message);
//       if (decodedMessage['topic'] == topic) {
//         onMessage(decodedMessage['msg']);
//       }
//     });
//   }
//
//   void close() {
//     _channel.sink.close();
//   }
// }
//////////////////////////////////////////////////////////////////////////////////////////////

// The best client code websocket service for the best code

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

class WebSocketService {
  final String url;
  late WebSocketChannel _channel;

  WebSocketService(this.url) {
    _channel = WebSocketChannel.connect(Uri.parse(url));
    _preAdvertiseTopics();
  }

  void _preAdvertiseTopics() {
    _advertiseTopic('/deliver', 'navigation_goals/deliver');
    _advertiseTopic('/goal_reach', 'std_msgs/Int32');
    _advertiseTopic('/door', 'std_msgs/Int32'); // Advertise 'door' topic
    _advertiseTopic('/room', 'std_msgs/Int32'); // Advertise 'room' topic
  }

  void _advertiseTopic(String topic, String type) {
    final advertiseMessage = {
      'op': 'advertise',
      'topic': topic,
      'type': type,
    };
    _channel.sink.add(json.encode(advertiseMessage));
  }

  void publish(String topic, Map<String, dynamic> message) {
    final publishMessage = {
      'op': 'publish',
      'topic': topic,
      'msg': message,
    };
    _channel.sink.add(json.encode(publishMessage));
  }

  void subscribe(String topic, Function(dynamic) onMessage) {
    final subscribeMessage = {
      'op': 'subscribe',
      'topic': topic,
    };
    _channel.sink.add(json.encode(subscribeMessage));

    _channel.stream.listen((message) {
      final decodedMessage = json.decode(message);
      if (decodedMessage['topic'] == topic) {
        onMessage(decodedMessage['msg']);
      }
    });
  }

  void close() {
    _channel.sink.close();
  }
}


////////////////////////////////////////////////////////////////////////////////////////////////
//
// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Subscribe to the "deliver" topic
//     _subscribeToTopic('/deliver');
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           sink.add(decoded);
//         } catch (e) {
//           // Handle JSON decode errors
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String message) {
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }


////////////////////////////////////////////////

// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Subscribe to the "deliver" topic
//     _subscribeToTopic('/deliver');
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           // Check if the message has 'msg' field
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           // Handle JSON decode errors
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String message) {
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }
//
//
//

///////////////////////////////////////////////////////////////////////////////////////

// Full except delvier button
//
// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Advertise the topic, then subscribe to it
//     _advertiseTopic('/deliver');
//   }
//
//   void _advertiseTopic(String topic) {
//     final advertiseMessage = jsonEncode({
//       'op': 'advertise',
//       'topic': topic,
//       'type': 'navigation_goals/deliver', // Replace with the actual message type  navigation_goals/deliver std_msgs/String
//     });
//     _channel.sink.add(advertiseMessage);
//
//     // After advertising, subscribe to the topic
//     Future.delayed(Duration(seconds: 1), () => _subscribeToTopic(topic));
//   }
// // topic
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String topic, Map<String, dynamic> messageContent) {
//     final message = jsonEncode({
//       'op': 'publish',
//       'topic': topic,
//       'msg': messageContent,
//     });
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }

/////////////////////////////////////////////////////////////////////////////////

// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Advertise the topic, then subscribe to it
//     _advertiseTopic('/deliver');
//   }
//
//   void _advertiseTopic(String topic) {
//     final advertiseMessage = jsonEncode({
//       'op': 'advertise',
//       'topic': topic,
//       'type': 'navigation_goals/deliver',
//     });
//     _channel.sink.add(advertiseMessage);
//
//     // After advertising, subscribe to the topic
//     Future.delayed(Duration(seconds: 1), () => _subscribeToTopic(topic));
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String topic, dynamic messageContent) {
//     // Ensure messageContent is wrapped in a map if it's not already
//     final message = jsonEncode({
//       'op': 'publish',
//       'topic': topic,
//       'msg': messageContent is Map<String, dynamic> ? messageContent : {'value': messageContent},
//     });
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }

/////////////////////////////////////////////////////////////////////////////////

// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Advertise the topic, then subscribe to it
//     _advertiseTopic('/deliver');
//     _advertiseTopic('/door');
//   }
//
//   void _advertiseTopic(String topic) {
//     final advertiseMessage = jsonEncode({
//       'op': 'advertise',
//       'topic': topic,
//       'type': 'navigation_goals/deliver',
//     });
//     _channel.sink.add(advertiseMessage);
//
//     // After advertising, subscribe to the topic
//     Future.delayed(Duration(seconds: 1), () => _subscribeToTopic(topic));
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String topic, dynamic messageContent) {
//     // Ensure messageContent is wrapped in a map if it's not already
//     final message = jsonEncode({
//       'op': 'publish',
//       'topic': topic,
//       'msg': messageContent is Map<String, dynamic> ? messageContent : {'value': messageContent},
//     });
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////
// //
// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Advertise the topics, then subscribe to them
//     _advertiseTopic('/deliver');
//   }
//
//   void _advertiseTopic(String topic) {
//     final advertiseMessage = jsonEncode({
//       'op': 'advertise',
//       'topic': topic,
//       'type': 'navigation_goals/deliver', // Adjust this as needed
//     });
//     _channel.sink.add(advertiseMessage);
//
//     // After advertising, subscribe to the topic
//     Future.delayed(Duration(seconds: 1), () => _subscribeToTopic(topic));
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String topic, dynamic messageContent) {
//     final message = jsonEncode({
//       'op': 'publish',
//       'topic': topic,
//       'msg': messageContent is Map<String, dynamic> ? messageContent : {'value': messageContent},
//     });
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////

// Full Without deliver button

// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Advertise and subscribe to the '/deliver' topic
//     _advertiseTopic('/deliver');
//
//     // Advertise and subscribe to the '/door' topic with type 'std_msgs/Int32'
//     _advertiseTopic('/door', 'std_msgs/Int32');
//   }
//
//   void _advertiseTopic(String topic, [String type = 'navigation_goals/deliver']) {
//     final advertiseMessage = jsonEncode({
//       'op': 'advertise',
//       'topic': topic,
//       'type': type, // Updated type parameter
//     });
//     _channel.sink.add(advertiseMessage);
//
//     // After advertising, subscribe to the topic
//     Future.delayed(Duration(seconds: 1), () => _subscribeToTopic(topic));
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String topic, dynamic messageContent) {
//     final message = jsonEncode({
//       'op': 'publish',
//       'topic': topic,
//       'msg': topic == '/door'
//           ? {'data': messageContent} // Correct format for 'std_msgs/Int32'
//           : (messageContent is Map<String, dynamic> ? messageContent : {'value': messageContent}),
//     });
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }
//

///////////////////////////////////////////

// The optimum websocket configurations

// lib/websocket_service.dart
// import 'dart:async';
// import 'dart:convert';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class WebSocketService {
//   final WebSocketChannel _channel;
//   late final Stream<Map<String, dynamic>> _messages;
//   late final StreamController<Map<String, dynamic>> _messageController;
//
//   WebSocketService(String url)
//       : _channel = WebSocketChannel.connect(Uri.parse(url)) {
//     _messageController = StreamController<Map<String, dynamic>>.broadcast();
//     _messages = _channel.stream.transform(_messageTransformer());
//
//     _messages.listen(
//           (message) {
//         _messageController.add(message);
//       },
//       onError: (error) {
//         print('WebSocket error: $error');
//         _messageController.addError(error);
//       },
//       onDone: () {
//         print('WebSocket connection closed.');
//       },
//     );
//
//     // Advertise and subscribe to the '/deliver' topic
//     _advertiseTopic('/deliver');
//
//     // Advertise and subscribe to the '/door' topic with type 'std_msgs/Int32'
//     _advertiseTopic('/door', 'std_msgs/Int32');
//
//     // Advertise and subscribe to the '/room' topic with type 'std_msgs/Int32'
//     _advertiseTopic('/room', 'std_msgs/Int32');
//   }
//
//   void _advertiseTopic(String topic, [String type = 'navigation_goals/deliver']) {
//     final advertiseMessage = jsonEncode({
//       'op': 'advertise',
//       'topic': topic,
//       'type': type,
//     });
//     _channel.sink.add(advertiseMessage);
//
//     // After advertising, subscribe to the topic
//     Future.delayed(Duration(seconds: 1), () => _subscribeToTopic(topic));
//   }
//
//   void _subscribeToTopic(String topic) {
//     final subscriptionMessage = jsonEncode({
//       'op': 'subscribe',
//       'topic': topic,
//     });
//     _channel.sink.add(subscriptionMessage);
//   }
//
//   StreamTransformer<dynamic, Map<String, dynamic>> _messageTransformer() {
//     return StreamTransformer<dynamic, Map<String, dynamic>>.fromHandlers(
//       handleData: (data, sink) {
//         try {
//           final decoded = jsonDecode(data as String) as Map<String, dynamic>;
//           if (decoded.containsKey('msg') && decoded['msg'] is Map<String, dynamic>) {
//             sink.add(decoded['msg'] as Map<String, dynamic>);
//           } else {
//             sink.addError('Unexpected message format');
//           }
//         } catch (e) {
//           print('Error decoding JSON: $e');
//           sink.addError('Error decoding JSON');
//         }
//       },
//     );
//   }
//
//   Stream<Map<String, dynamic>> get messages => _messageController.stream;
//
//   void send(String topic, dynamic messageContent) {
//     final message = jsonEncode({
//       'op': 'publish',
//       'topic': topic,
//       'msg': topic == '/door' || topic == '/room'
//           ? {'data': messageContent} // Correct format for 'std_msgs/Int32'
//           : (messageContent is Map<String, dynamic> ? messageContent : {'value': messageContent}),
//     });
//     _channel.sink.add(message);
//   }
//
//   void close() {
//     _channel.sink.close();
//     _messageController.close();
//   }
// }
