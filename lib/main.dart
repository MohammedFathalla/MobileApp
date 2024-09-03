// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController roomController = TextEditingController();
//   final WebSocketService webSocketService = WebSocketService('ws://192.168.1.49:9090');
//   final PageController _pageController = PageController();
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           _buildHomePage(),
//           _buildMasterPage(),
//           _buildDeliveryPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(1); // Navigate to MasterPage
//                 },
//                 child: Text('Master'),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle Client button press
//                 },
//                 child: Text('Client'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMasterPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('Enter your room number'),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Room Number',
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final roomNumber = int.tryParse(roomController.text);
//               if (roomNumber != null) {
//                 webSocketService.sendRoomNumber(roomNumber);
//                 FocusScope.of(context).unfocus(); // Hide the keyboard
//                 _navigateToPage(2); // Navigate to DeliveryPage
//               }
//             },
//             child: Text('Deliver'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDeliveryPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text('Delivery in process'),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     super.dispose();
//   }
// }

///////////////////////////////////////////////////////////////////////////////////////
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController roomController = TextEditingController();
//   final WebSocketService webSocketService = WebSocketService('ws://192.168.1.49:9090/rosbridge_websocket');
//
//   final PageController _pageController = PageController();
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
// //   // final WebSocketService webSocketService = WebSocketService('ws://192.168.1.49:9090');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           _buildHomePage(),
//           _buildMasterPage(),
//           _buildDeliveryPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(1); // Navigate to MasterPage
//                 },
//                 child: Text('Master'),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle Client button press
//                 },
//                 child: Text('Client'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMasterPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('Enter your room number'),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Room Number',
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final roomNumber = int.tryParse(roomController.text);
//               if (roomNumber != null) {
//                 webSocketService.sendRoomNumber(roomNumber);
//                 FocusScope.of(context).unfocus(); // Hide the keyboard
//                 _navigateToPage(2); // Navigate to DeliveryPage
//               } else {
//                 print('Invalid room number');
//               }
//             },
//             child: Text('Deliver'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDeliveryPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text('Delivery in process'),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     super.dispose();
//   }
// }
///////////////////////////////////////////////////////////////////////////////////////////////////////////
//  // This is websocket_service.dart realted to code above
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: WelcomePage(),
//     );
//   }
// }
//
// class WelcomePage extends StatefulWidget {
//   @override
//   _WelcomePageState createState() => _WelcomePageState();
// }
//
// class _WelcomePageState extends State<WelcomePage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _connectAndProceed() {
//     final ip = ipController.text.trim();
//     final port = portController.text.trim();
//
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       final url = 'ws://$ip:$port/rosbridge_websocket';
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => MainPage(webSocketUrl: url),
//         ),
//       );
//     } else {
//       print('IP address and port number cannot be empty.');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery App'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Welcome to our Delivery Mobile Robot',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 40),
//             TextField(
//               controller: ipController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'IP Address',
//               ),
//               keyboardType: TextInputType.text,
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: portController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Port Number',
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _connectAndProceed,
//               child: Text('Connect'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MainPage extends StatefulWidget {
//   final String webSocketUrl;
//
//   MainPage({required this.webSocketUrl});
//
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   late WebSocketService webSocketService;
//   final TextEditingController roomController = TextEditingController();
//   final PageController _pageController = PageController();
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService(widget.webSocketUrl);
//   }
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           _buildHomePage(),
//           _buildMasterPage(),
//           _buildDeliveryPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(1); // Navigate to MasterPage
//                 },
//                 child: Text('Master'),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle Client button press
//                 },
//                 child: Text('Client'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMasterPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('Enter your room number'),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Room Number',
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final roomNumber = int.tryParse(roomController.text);
//               if (roomNumber != null) {
//                 webSocketService.sendRoomNumber(roomNumber);
//                 FocusScope.of(context).unfocus(); // Hide the keyboard
//                 _navigateToPage(2); // Navigate to DeliveryPage
//               } else {
//                 print('Invalid room number');
//               }
//             },
//             child: Text('Deliver'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDeliveryPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text('Delivery in process'),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     super.dispose();
//   }
// }
//////////////////////////////////////////////////////////////////////////////////////////////////////

// This divides to Master and client and page after clicking each one

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white, // Set background color to white
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToHomePage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomePage(ip: ip, port: port),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Welcome to our Delivery Mobile Robot",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               TextField(
//                 controller: ipController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter IP Address',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: portController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Port Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () => _navigateToHomePage(context),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black, // Button color
//                   foregroundColor: Colors.white, // Text color
//                 ),
//                 child: Text('Continue'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   HomePage({required this.ip, required this.port});
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//   final PageController _pageController = PageController();
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           _buildHomePage(),
//           _buildMasterPage(),
//           _buildClientPage(),
//           _buildDeliveryPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(1); // Navigate to MasterPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black, // Button color
//                   foregroundColor: Colors.white, // Text color
//                 ),
//                 child: Text('Master'),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(2); // Navigate to ClientPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black, // Button color
//                   foregroundColor: Colors.white, // Text color
//                 ),
//                 child: Text('Client'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMasterPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('Enter your room number'),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Room Number',
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final roomNumber = int.tryParse(roomController.text);
//               if (roomNumber != null) {
//                 webSocketService.sendRoomNumber(roomNumber);
//                 FocusScope.of(context).unfocus(); // Hide the keyboard
//                 _navigateToPage(3); // Navigate to DeliveryPage
//               }
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.black, // Button color
//               foregroundColor: Colors.white, // Text color
//             ),
//             child: Text('Deliver'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildClientPage() {
//     return Center(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'O6U delivery robots is ready to serve you sir',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20),
//               Image.asset(
//                 'assets/robot.png',
//                 height: 200,
//                 fit: BoxFit.contain,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: roomController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Room Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: passcodeController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Passcode',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle login logic
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black, // Button color
//                   foregroundColor: Colors.white, // Text color
//                 ),
//                 child: Text('Log In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDeliveryPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text('Delivery in process'),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
/////////////////////////////////////////////////////////////////////////////////////////////


/*

Take the code above and do the following , this is flutter program for mobile application I need you to implement this in client code After entering the room number and passcode and clicking "Log In," you want a page that has a top section labeled "Items." Below it, you need a list of four items such as water, chocolate, juice, and cola, the image of item on the left and beside it from the right the name and on the right add button ( put image link and i will follow it with the image ) after that
There should be Deliver button after clicking on this button
After this, a confirmation page should ask, "Are you sure?" and show the items selected. You need "Yes" or "No" buttons.
Finally, there should be a page displaying a message saying, "Your order will be delivered shortly." and robot image

 */


// Good code except the master page

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToHomePage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomePage(ip: ip, port: port),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Welcome to our Delivery Mobile Robot",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               TextField(
//                 controller: ipController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter IP Address',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: portController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Port Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () => _navigateToHomePage(context),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Continue'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   HomePage({required this.ip, required this.port});
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//   final PageController _pageController = PageController();
//   final List<String> selectedItems = [];
//   final List<Item> items = [
//     Item(name: 'Water', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Chocolate', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Juice', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Cola', imageUrl: 'https://via.placeholder.com/50'),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
//
//   void _toggleItemSelection(String itemName) {
//     setState(() {
//       if (selectedItems.contains(itemName)) {
//         selectedItems.remove(itemName);
//       } else {
//         selectedItems.add(itemName);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           _buildHomePage(),
//           _buildMasterPage(),
//           _buildClientPage(),
//           _buildItemSelectionPage(),
//           _buildConfirmationPage(),
//           _buildFinalPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(1); // Navigate to MasterPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Master'),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(2); // Navigate to ClientPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Client'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMasterPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('Enter your room number'),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Room Number',
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final roomNumber = int.tryParse(roomController.text);
//               if (roomNumber != null) {
//                 webSocketService.sendRoomNumber(roomNumber);
//                 FocusScope.of(context).unfocus();
//                 _navigateToPage(2); // Navigate to ClientPage
//               }
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.black,
//               foregroundColor: Colors.white,
//             ),
//             child: Text('Deliver'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildClientPage() {
//     return Center(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'O6U delivery robots is ready to serve you sir',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20),
//               Image.asset(
//                 'assets/robot.png',
//                 height: 200,
//                 fit: BoxFit.contain,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: roomController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Room Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: passcodeController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Passcode',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(3); // Navigate to ItemSelectionPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Log In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildItemSelectionPage() {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             'Items',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Expanded(
//           child: ListView(
//             children: items.map((item) {
//               return ListTile(
//                 leading: Image.network(
//                   item.imageUrl,
//                   width: 50,
//                   height: 50,
//                 ),
//                 title: Text(item.name),
//                 trailing: IconButton(
//                   icon: Icon(
//                     selectedItems.contains(item.name)
//                         ? Icons.check_box
//                         : Icons.check_box_outline_blank,
//                   ),
//                   onPressed: () => _toggleItemSelection(item.name),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             _navigateToPage(4); // Navigate to ConfirmationPage
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.black,
//             foregroundColor: Colors.white,
//           ),
//           child: Text('Deliver'),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildConfirmationPage() {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             'Are you sure?',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: selectedItems.length,
//             itemBuilder: (context, index) {
//               final item = selectedItems[index];
//               return ListTile(
//                 leading: Image.network(
//                   items.firstWhere((i) => i.name == item).imageUrl,
//                   width: 50,
//                   height: 50,
//                 ),
//                 title: Text(item),
//               );
//             },
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToPage(5); // Navigate to FinalPage
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//               ),
//               child: Text('Yes'),
//             ),
//             SizedBox(width: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToPage(3); // Go back to ItemSelectionPage
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//               ),
//               child: Text('No'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildFinalPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network(
//             'https://via.placeholder.com/200', // Placeholder image
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Your order will be delivered shortly.',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class Item {
//   final String name;
//   final String imageUrl;
//
//   Item({required this.name, required this.imageUrl});
// }



///////////////////////////////////////////////////////////

///// The perfect client code only

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToHomePage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomePage(ip: ip, port: port),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Welcome to our Delivery Mobile Robot",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               TextField(
//                 controller: ipController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter IP Address',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: portController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Port Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () => _navigateToHomePage(context),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Continue'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   HomePage({required this.ip, required this.port});
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//   final PageController _pageController = PageController();
//   final List<String> selectedItems = [];
//   final List<Item> items = [
//     Item(name: 'Water', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Chocolate', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Juice', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Cola', imageUrl: 'https://via.placeholder.com/50'),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
//
//   void _toggleItemSelection(String itemName) {
//     setState(() {
//       if (selectedItems.contains(itemName)) {
//         selectedItems.remove(itemName);
//       } else {
//         selectedItems.add(itemName);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop(); // Handle back navigation
//           },
//         ),
//       ),
//       body: PageView(
//         controller: _pageController,
//         physics: NeverScrollableScrollPhysics(), // Disable swipe gestures
//         children: [
//           _buildHomePage(),
//           _buildClientPage(),
//           _buildItemSelectionPage(),
//           _buildConfirmationPage(),
//           _buildOrderOnWayPage(), // Add the new page here
//           _buildFinalPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(1); // Navigate to ClientPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Client'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildClientPage() {
//     return Center(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'O6U delivery robots is ready to serve you sir',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20),
//               Image.asset(
//                 'assets/robot.png',
//                 height: 200,
//                 fit: BoxFit.contain,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: roomController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Room Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: passcodeController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Passcode',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {
//                   _navigateToPage(2); // Navigate to ItemSelectionPage
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Text('Log In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildItemSelectionPage() {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             'Items',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Expanded(
//           child: ListView(
//             children: items.map((item) {
//               return ListTile(
//                 leading: Image.network(
//                   item.imageUrl,
//                   width: 50,
//                   height: 50,
//                 ),
//                 title: Text(item.name),
//                 trailing: IconButton(
//                   icon: Icon(
//                     selectedItems.contains(item.name)
//                         ? Icons.check_box
//                         : Icons.check_box_outline_blank,
//                   ),
//                   onPressed: () => _toggleItemSelection(item.name),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             _navigateToPage(3); // Navigate to ConfirmationPage
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.black,
//             foregroundColor: Colors.white,
//           ),
//           child: Text('Deliver'),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildConfirmationPage() {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             'Are you sure?',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: selectedItems.length,
//             itemBuilder: (context, index) {
//               final item = selectedItems[index];
//               return ListTile(
//                 leading: Image.network(
//                   items.firstWhere((i) => i.name == item).imageUrl,
//                   width: 50,
//                   height: 50,
//                 ),
//                 title: Text(item),
//               );
//             },
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToPage(4); // Navigate to OrderOnWayPage
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//               ),
//               child: Text('Yes'),
//             ),
//             SizedBox(width: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToPage(2); // Go back to ItemSelectionPage
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//               ),
//               child: Text('No'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildOrderOnWayPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Your order is on the way!',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildFinalPage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network(
//             'https://via.placeholder.com/200',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Your order will be delivered shortly.',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class Item {
//   final String name;
//   final String imageUrl;
//
//   Item({required this.name, required this.imageUrl});
// }
////////////////////////////////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToHomePage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomePage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       // Optionally, show an error message if fields are empty
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView( // Added to prevent overflow on smaller screens
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToHomePage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   HomePage({required this.ip, required this.port});
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//   final PageController _pageController = PageController();
//   final List<String> selectedItems = [];
//   final List<Item> items = [
//     Item(name: 'Water', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Chocolate', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Juice', imageUrl: 'https://via.placeholder.com/50'),
//     Item(name: 'Cola', imageUrl: 'https://via.placeholder.com/50'),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//     // Optionally, initiate WebSocket connection here
//     // webSocketService.connect();
//   }
//
//   void _navigateToPage(int pageIndex) {
//     _pageController.jumpToPage(pageIndex);
//   }
//
//   void _toggleItemSelection(String itemName) {
//     setState(() {
//       if (selectedItems.contains(itemName)) {
//         selectedItems.remove(itemName);
//       } else {
//         selectedItems.add(itemName);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Delivery'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop(); // Handle back navigation
//           },
//         ),
//       ),
//       body: PageView(
//         controller: _pageController,
//         physics: NeverScrollableScrollPhysics(), // Disable swipe gestures
//         children: [
//           _buildHomePage(),
//           _buildClientPage(),
//           _buildItemSelectionPage(),
//           _buildConfirmationPage(),
//           _buildOrderOnWayPage(),
//           _buildFinalPage(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildHomePage() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             'assets/robot.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 30),
//           ElevatedButton(
//             onPressed: () {
//               _navigateToPage(1); // Navigate to ClientPage
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.black,
//               foregroundColor: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//               textStyle: TextStyle(fontSize: 18),
//             ),
//             child: Text('Client'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildClientPage() {
//     return Center(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'O6U delivery robots are ready to serve you sir',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               Image.asset(
//                 'assets/robot.png',
//                 height: 200,
//                 fit: BoxFit.contain,
//               ),
//               SizedBox(height: 30),
//               TextField(
//                 controller: roomController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Room Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: passcodeController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Passcode',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {
//                   if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Please enter both room number and passcode')),
//                     );
//                   } else {
//                     _navigateToPage(2); // Navigate to ItemSelectionPage
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                   textStyle: TextStyle(fontSize: 18),
//                 ),
//                 child: Text('Log In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildItemSelectionPage() {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//         automaticallyImplyLeading: false, // Remove back button
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Items',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               children: items.map((item) {
//                 return ListTile(
//                   leading: Image.network(
//                     item.imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(item.name),
//                   trailing: IconButton(
//                     icon: Icon(
//                       selectedItems.contains(item.name)
//                           ? Icons.check_box
//                           : Icons.check_box_outline_blank,
//                       color: Colors.black,
//                     ),
//                     onPressed: () => _toggleItemSelection(item.name),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               onPressed: selectedItems.isNotEmpty
//                   ? () {
//                 _navigateToPage(3); // Navigate to ConfirmationPage
//               }
//                   : null, // Disable button if no items are selected
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildConfirmationPage() {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirmation'),
//         automaticallyImplyLeading: false, // Remove back button
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Are you sure you want to deliver the following items?',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: selectedItems.length,
//               itemBuilder: (context, index) {
//                 final itemName = selectedItems[index];
//                 final item = items.firstWhere((i) => i.name == itemName);
//                 return ListTile(
//                   leading: Image.network(
//                     item.imageUrl,
//                     width: 50,
//                     height: 50,
//                   ),
//                   title: Text(item.name),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     _navigateToPage(4); // Navigate to OrderOnWayPage
//                     // Optionally, send order data via WebSocket here
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Yes'),
//                 ),
//                 SizedBox(width: 30),
//                 ElevatedButton(
//                   onPressed: () {
//                     _navigateToPage(2); // Go back to ItemSelectionPage
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.grey,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('No'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildOrderOnWayPage() {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order On The Way'),
//         automaticallyImplyLeading: false, // Remove back button
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Your order is on its way!',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToPage(5); // Navigate to FinalPage
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Done'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildFinalPage() {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmed'),
//         automaticallyImplyLeading: false, // Remove back button
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.network(
//                 'https://via.placeholder.com/200', // Replace with your desired image
//                 height: 200,
//                 fit: BoxFit.contain,
//               ),
//               SizedBox(height: 30),
//               Text(
//                 'Your order will be delivered shortly.',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {
//                   // Optionally, navigate back to HomePage or exit the app
//                   Navigator.of(context).popUntil((route) => route.isFirst);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
//                   textStyle: TextStyle(fontSize: 18),
//                 ),
//                 child: Text('Back to Home'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     _pageController.dispose();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class Item {
//   final String name;
//   final String imageUrl;
//
//   Item({required this.name, required this.imageUrl});
// }

///////////////////////////////////////////////////////////////////////////////////////

// Perfect Client Code ( temprary and needs to be changed )
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => ItemSelectionPage()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class ItemSelectionPage extends StatefulWidget {
//   @override
//   _ItemSelectionPageState createState() => _ItemSelectionPageState();
// }
//
// class _ItemSelectionPageState extends State<ItemSelectionPage> {
//   Map<String, int> items = {
//     'Water': 0,
//     'Chocolate': 0,
//     'Nuts': 0,
//     'Cola': 0,
//   };
//
//   void _proceedToConfirmationPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ConfirmationPage(selectedItems: items),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Items',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   String itemName = items.keys.elementAt(index);
//                   return ListTile(
//                     title: Text(itemName),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.remove),
//                           onPressed: () {
//                             setState(() {
//                               if (items[itemName]! > 0) {
//                                 items[itemName] = items[itemName]! - 1;
//                               }
//                             });
//                           },
//                         ),
//                         Text('${items[itemName]}'),
//                         IconButton(
//                           icon: Icon(Icons.add),
//                           onPressed: () {
//                             setState(() {
//                               items[itemName] = items[itemName]! + 1;
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _proceedToConfirmationPage,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final Map<String, int> selectedItems;
//
//   ConfirmationPage({required this.selectedItems});
//
//   void _confirmOrder(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => OrderSuccessPage(),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Are you sure?',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView(
//                 children: selectedItems.entries
//                     .where((entry) => entry.value > 0)
//                     .map((entry) => ListTile(
//                   title: Text('${entry.key}'),
//                   trailing: Text('x${entry.value}'),
//                 ))
//                     .toList(),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => Navigator.pop(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('No'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _confirmOrder(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Yes'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Success'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.check_circle,
//                 color: Colors.green,
//                 size: 100,
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Your order will be delivered shortly!',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class WebSocketService {
//   final String url;
//   WebSocketService(this.url);
//
//   void sendMessage(String message) {
//     // Simulating WebSocket message sending
//     print('Sending message to $url: $message');
//   }
//
//   void close() {
//     // Simulating WebSocket closure
//     print('WebSocket closed');
//   }
// }

////////////////////////////////////////////////////////////////////////////////


// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => ItemSelectionPage()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class ItemSelectionPage extends StatefulWidget {
//   @override
//   _ItemSelectionPageState createState() => _ItemSelectionPageState();
// }
//
// class _ItemSelectionPageState extends State<ItemSelectionPage> {
//   Map<String, int> items = {
//     'Water': 0,
//     'Chocolate': 0,
//     'Nuts': 0,
//     'Cola': 0,
//   };
//
//   void _proceedToConfirmationPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ConfirmationPage(selectedItems: items),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Items',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   String itemName = items.keys.elementAt(index);
//                   return ListTile(
//                     title: Text(itemName),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.remove),
//                           onPressed: () {
//                             setState(() {
//                               if (items[itemName]! > 0) {
//                                 items[itemName] = items[itemName]! - 1;
//                               }
//                             });
//                           },
//                         ),
//                         Text('${items[itemName]}'),
//                         IconButton(
//                           icon: Icon(Icons.add),
//                           onPressed: () {
//                             setState(() {
//                               items[itemName] = items[itemName]! + 1;
//                             });
//                           },
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _proceedToConfirmationPage,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final Map<String, int> selectedItems;
//
//   ConfirmationPage({required this.selectedItems});
//
//   void _confirmOrder(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => OrderSuccessPage(),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Are you sure?',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView(
//                 children: selectedItems.entries
//                     .where((entry) => entry.value > 0)
//                     .map((entry) => ListTile(
//                   title: Text('${entry.key}'),
//                   trailing: Text('x${entry.value}'),
//                 ))
//                     .toList(),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => Navigator.pop(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('No'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _confirmOrder(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Yes'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Success'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.check_circle,
//                 color: Colors.green,
//                 size: 100,
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Your order will be delivered shortly!',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
////////////////////////////////////////////////////////////////////////////////
//
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'O6U Delivery Robots',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => SelectItemsPage()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class SelectItemsPage extends StatefulWidget {
//   @override
//   _SelectItemsPageState createState() => _SelectItemsPageState();
// }
//
// class _SelectItemsPageState extends State<SelectItemsPage> {
//   Map<String, bool> selectedItems = {
//     'water': false,
//     'chocolate': false,
//     'nuts': false,
//     'cola': false,
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: selectedItems.keys.map((String key) {
//                 return CheckboxListTile(
//                   value: selectedItems[key],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectedItems[key] = value ?? false;
//                     });
//                   },
//                   title: Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           border: Border.all(color: Colors.black, width: 1),
//                           image: DecorationImage(
//                             image: AssetImage('assets/$key.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(key.capitalize()),
//                     ],
//                   ),
//                   controlAffinity: ListTileControlAffinity.trailing,
//                 );
//               }).toList(),
//             ),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ConfirmOrderPage(selectedItems: selectedItems)),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
//
// class ConfirmOrderPage extends StatelessWidget {
//   final Map<String, bool> selectedItems;
//
//   ConfirmOrderPage({required this.selectedItems});
//
//   void _confirmOrder(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderSuccessPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirm Your Order'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Are you sure you want to order the following items?',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView(
//                 children: selectedItems.entries
//                     .where((entry) => entry.value)
//                     .map((entry) => ListTile(
//                   title: Text('${entry.key.capitalize()}'),
//                 ))
//                     .toList(),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => Navigator.pop(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('No'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => _confirmOrder(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Yes'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// extension CapitalizeExtension on String {
//   String capitalize() {
//     if (this == null || this.isEmpty) {
//       return this;
//     }
//     return '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
//   }
// }
//////////////////////////////////////////////////////////////////////////////

// Appropriate for code that sends on deliver topic  ( client )

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'O6U Delivery Robots',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => SelectItemsPage(roomNumber: roomController.text.trim(), webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class SelectItemsPage extends StatefulWidget {
//   final String roomNumber;
//   final WebSocketService webSocketService;
//
//   SelectItemsPage({required this.roomNumber, required this.webSocketService});
//
//   @override
//   _SelectItemsPageState createState() => _SelectItemsPageState();
// }
//
// class _SelectItemsPageState extends State<SelectItemsPage> {
//   Map<String, bool> selectedItems = {
//     'water': false,
//     'chocolate': false,
//     'nuts': false,
//     'cola': false,
//   };
//
//   void _placeOrder() {
//     final List<String> selectedProductNames = selectedItems.entries
//         .where((entry) => entry.value)
//         .map((entry) => entry.key)
//         .toList();
//
//     final orderMessage = {
//       'room_number': int.parse(widget.roomNumber), // Convert room number to int
//       'room_order': selectedProductNames.join(', '),
//     };
//
//     widget.webSocketService.publish('/deliver', orderMessage);
//
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderSuccessPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: selectedItems.keys.map((String key) {
//                 return CheckboxListTile(
//                   value: selectedItems[key],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectedItems[key] = value ?? false;
//                     });
//                   },
//                   title: Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           border: Border.all(color: Colors.black, width: 1),
//                           image: DecorationImage(
//                             image: AssetImage('assets/$key.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(key.capitalize()),
//                     ],
//                   ),
//                   controlAffinity: ListTileControlAffinity.trailing,
//                 );
//               }).toList(),
//             ),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: _placeOrder,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
//
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// extension CapitalizeExtension on String {
//   String capitalize() {
//     if (this == null || this.isEmpty) {
//       return this;
//     }
//     return '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
//   }
// }
////////////////////////////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'O6U Delivery Robots',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//     webSocketService.subscribe('goal_reach', _onGoalReach);
//   }
//
//   void _onGoalReach(dynamic message) {
//     if (message is int && message == 1) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => EmptyPage()),
//       );
//     }
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => SelectItemsPage(roomNumber: roomController.text.trim(), webSocketService: webSocketService),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class SelectItemsPage extends StatefulWidget {
//   final String roomNumber;
//   final WebSocketService webSocketService;
//
//   SelectItemsPage({required this.roomNumber, required this.webSocketService});
//
//   @override
//   _SelectItemsPageState createState() => _SelectItemsPageState();
// }
//
// class _SelectItemsPageState extends State<SelectItemsPage> {
//   Map<String, bool> selectedItems = {
//     'water': false,
//     'chocolate': false,
//     'nuts': false,
//     'cola': false,
//   };
//
//   void _placeOrder() {
//     final List<String> selectedProductNames = selectedItems.entries
//         .where((entry) => entry.value)
//         .map((entry) => entry.key)
//         .toList();
//
//     final orderMessage = {
//       'room_number': int.parse(widget.roomNumber), // Convert room number to int
//       'room_order': selectedProductNames.join(', '),
//     };
//
//     widget.webSocketService.publish('/deliver', orderMessage);
//
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderSuccessPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: selectedItems.keys.map((String key) {
//                 return CheckboxListTile(
//                   value: selectedItems[key],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectedItems[key] = value ?? false;
//                     });
//                   },
//                   title: Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           border: Border.all(color: Colors.black, width: 1),
//                           image: DecorationImage(
//                             image: AssetImage('assets/$key.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(key.capitalize()),
//                     ],
//                   ),
//                   controlAffinity: ListTileControlAffinity.trailing,
//                 );
//               }).toList(),
//             ),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: _placeOrder,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class EmptyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Empty Page'),
//       ),
//       body: Center(
//         child: Text('This is an empty page'),
//       ),
//     );
//   }
// }
//
// extension StringCapitalizeExtension on String {
//   String capitalize() {
//     return this.isEmpty ? this : this[0].toUpperCase() + this.substring(1);
//   }
// }
////////////////////////////////////////////////////////////////////////////////

// This is good but needs empty page 
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'O6U Delivery Robots',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => SelectItemsPage(roomNumber: roomController.text.trim(), webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class SelectItemsPage extends StatefulWidget {
//   final String roomNumber;
//   final WebSocketService webSocketService;
//
//   SelectItemsPage({required this.roomNumber, required this.webSocketService});
//
//   @override
//   _SelectItemsPageState createState() => _SelectItemsPageState();
// }
//
// class _SelectItemsPageState extends State<SelectItemsPage> {
//   Map<String, bool> selectedItems = {
//     'water': false,
//     'chocolate': false,
//     'nuts': false,
//     'cola': false,
//   };
//
//   void _placeOrder() {
//     final List<String> selectedProductNames = selectedItems.entries
//         .where((entry) => entry.value)
//         .map((entry) => entry.key)
//         .toList();
//
//     final orderMessage = {
//       'room_number': int.parse(widget.roomNumber), // Convert room number to int
//       'room_order': selectedProductNames.join(', '),
//     };
//
//     widget.webSocketService.publish('/deliver', orderMessage);
//
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderSuccessPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: selectedItems.keys.map((String key) {
//                 return CheckboxListTile(
//                   value: selectedItems[key],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectedItems[key] = value ?? false;
//                     });
//                   },
//                   title: Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           border: Border.all(color: Colors.black, width: 1),
//                           image: DecorationImage(
//                             image: AssetImage('assets/$key.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(key.capitalize()),
//                     ],
//                   ),
//                   controlAffinity: ListTileControlAffinity.trailing,
//                 );
//               }).toList(),
//             ),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: _placeOrder,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// extension CapitalizeExtension on String {
//   String capitalize() {
//     if (this == null || this.isEmpty) {
//       return this;
//     }
//     return '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
//   }
// }
////////////////////////////////////////////////////////////////////////////////

/// reached till empty page shown

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// // Custom extension to capitalize the first letter of a string
// extension CapitalizeExtension on String {
//   String capitalize() {
//     if (this == null || this.isEmpty) {
//       return '';
//     }
//     return this[0].toUpperCase() + this.substring(1).toLowerCase();
//   }
// }
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'O6U Delivery Robots',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//     webSocketService.subscribe('/goal_reach', (message) {
//       if (message['data'] == 1) {
//         _navigateToEmptyPage();
//       }
//     });
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => SelectItemsPage(roomNumber: roomController.text.trim(), webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   void _navigateToEmptyPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => EmptyPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class SelectItemsPage extends StatefulWidget {
//   final String roomNumber;
//   final WebSocketService webSocketService;
//
//   SelectItemsPage({required this.roomNumber, required this.webSocketService});
//
//   @override
//   _SelectItemsPageState createState() => _SelectItemsPageState();
// }
//
// class _SelectItemsPageState extends State<SelectItemsPage> {
//   Map<String, bool> selectedItems = {
//     'water': false,
//     'chocolate': false,
//     'nuts': false,
//     'cola': false,
//   };
//
//   void _placeOrder() {
//     final List<String> selectedProductNames = selectedItems.entries
//         .where((entry) => entry.value)
//         .map((entry) => entry.key)
//         .toList();
//
//     final orderMessage = {
//       'room_number': int.parse(widget.roomNumber), // Convert room number to int
//       'room_order': selectedProductNames.join(', '),
//     };
//
//     widget.webSocketService.publish('/deliver', orderMessage);
//
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderSuccessPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: selectedItems.keys.map((String key) {
//                 return CheckboxListTile(
//                   value: selectedItems[key],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectedItems[key] = value ?? false;
//                     });
//                   },
//                   title: Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           border: Border.all(color: Colors.black, width: 1),
//                           image: DecorationImage(
//                             image: AssetImage('assets/$key.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(key.capitalize()),
//                     ],
//                   ),
//                   controlAffinity: ListTileControlAffinity.trailing,
//                 );
//               }).toList(),
//             ),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: _placeOrder,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Please wait for your order.',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class EmptyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Empty Page'),
//       ),
//       body: Center(
//         child: Text(
//           'This is an empty page',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
////////////////////////////////////////////////////////////////////////////////

// good until empty page and buttons inside it

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// // Custom extension to capitalize the first letter of a string
// extension CapitalizeExtension on String {
//   String capitalize() {
//     if (this == null || this.isEmpty) {
//       return '';
//     }
//     return this[0].toUpperCase() + this.substring(1).toLowerCase();
//   }
// }
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'O6U Delivery Robots',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToClientPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ClientPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToClientPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ClientPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   ClientPage({required this.ip, required this.port});
//
//   @override
//   _ClientPageState createState() => _ClientPageState();
// }
//
// class _ClientPageState extends State<ClientPage> {
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//     webSocketService.subscribe('/goal_reach', (message) {
//       if (message['data'] == 1) {
//         _navigateToEmptyPage();
//       }
//     });
//   }
//
//   void _navigateToItemSelectionPage() {
//     if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both room number and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => SelectItemsPage(roomNumber: roomController.text.trim(), webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   void _navigateToEmptyPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => EmptyPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: roomController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Room Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Passcode',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToItemSelectionPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     roomController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class SelectItemsPage extends StatefulWidget {
//   final String roomNumber;
//   final WebSocketService webSocketService;
//
//   SelectItemsPage({required this.roomNumber, required this.webSocketService});
//
//   @override
//   _SelectItemsPageState createState() => _SelectItemsPageState();
// }
//
// class _SelectItemsPageState extends State<SelectItemsPage> {
//   Map<String, bool> selectedItems = {
//     'water': false,
//     'chocolate': false,
//     'nuts': false,
//     'cola': false,
//   };
//
//   void _placeOrder() {
//     final List<String> selectedProductNames = selectedItems.entries
//         .where((entry) => entry.value)
//         .map((entry) => entry.key)
//         .toList();
//
//     final orderMessage = {
//       'room_number': int.parse(widget.roomNumber), // Convert room number to int
//       'room_order': selectedProductNames.join(', '),
//     };
//
//     widget.webSocketService.publish('/deliver', orderMessage);
//
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderSuccessPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Items'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: selectedItems.keys.map((String key) {
//                 return CheckboxListTile(
//                   value: selectedItems[key],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       selectedItems[key] = value ?? false;
//                     });
//                   },
//                   title: Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           border: Border.all(color: Colors.black, width: 1),
//                           image: DecorationImage(
//                             image: AssetImage('assets/$key.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(key.capitalize()),
//                     ],
//                   ),
//                   controlAffinity: ListTileControlAffinity.trailing,
//                 );
//               }).toList(),
//             ),
//           ),
//           SizedBox(height: 20),
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: _placeOrder,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Proceed'),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
//
// class OrderSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your order has been delivered!',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class EmptyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Empty Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Send message to open the door
//                     // Your WebSocketService method to send the message should be here
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Send message to close the door
//                     // Your WebSocketService method to send the message should be here
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.popUntil(context, ModalRoute.withName('/'));
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               ),
//               child: Text('Go Back Home'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
////////////////////////////////////////////////////////////////////////////////

// The best client code websocket service for the best code
//
import 'package:flutter/material.dart';
import 'websocket_service.dart';

// Custom extension to capitalize the first letter of a string
extension CapitalizeExtension on String {
  String capitalize() {
    if (this == null || this.isEmpty) {
      return '';
    }
    return this[0].toUpperCase() + this.substring(1).toLowerCase();
  }
}

void main() {
  runApp(RobotDeliveryApp());
}

class RobotDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O6U Delivery Robots',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: IPAndPortEntryPage(),
    );
  }
}

class IPAndPortEntryPage extends StatefulWidget {
  @override
  _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
}

class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
  final TextEditingController ipController = TextEditingController();
  final TextEditingController portController = TextEditingController();

  void _navigateToClientPage(BuildContext context) {
    final String ip = ipController.text.trim();
    final String port = portController.text.trim();
    if (ip.isNotEmpty && port.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ClientPage(ip: ip, port: port),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both IP address and port number')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to our Delivery Mobile Robot",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                TextField(
                  controller: ipController,
                  decoration: InputDecoration(
                    labelText: 'Enter IP Address',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: portController,
                  decoration: InputDecoration(
                    labelText: 'Enter Port Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => _navigateToClientPage(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClientPage extends StatefulWidget {
  final String ip;
  final String port;

  ClientPage({required this.ip, required this.port});

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final TextEditingController roomController = TextEditingController();
  final TextEditingController passcodeController = TextEditingController();
  late WebSocketService webSocketService;

  @override
  void initState() {
    super.initState();
    webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
    webSocketService.subscribe('/goal_reach', (message) {
      if (message['data'] == 1) {
        _navigateToEmptyPageWithControls();
      }
    });
  }

  void _navigateToItemSelectionPage() {
    if (roomController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both room number and passcode')),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SelectItemsPage(roomNumber: roomController.text.trim(), webSocketService: webSocketService)),
      );
    }
  }

  void _navigateToEmptyPageWithControls() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmptyPageWithControls(webSocketService: webSocketService)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('O6U Delivery Robot'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/robot.png',
                  height: 200,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 30),
                TextField(
                  controller: roomController,
                  decoration: InputDecoration(
                    labelText: 'Enter Room Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passcodeController,
                  decoration: InputDecoration(
                    labelText: 'Enter Passcode',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _navigateToItemSelectionPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    webSocketService.close();
    roomController.dispose();
    passcodeController.dispose();
    super.dispose();
  }
}

class SelectItemsPage extends StatefulWidget {
  final String roomNumber;
  final WebSocketService webSocketService;

  SelectItemsPage({required this.roomNumber, required this.webSocketService});

  @override
  _SelectItemsPageState createState() => _SelectItemsPageState();
}

class _SelectItemsPageState extends State<SelectItemsPage> {
  Map<String, bool> selectedItems = {
    'water': false,
    'chocolate': false,
    'nuts': false,
    'cola': false,
  };

  void _placeOrder() {
    final List<String> selectedProductNames = selectedItems.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    final orderMessage = {
      'room_number': int.parse(widget.roomNumber), // Convert room number to int
      'room_order': selectedProductNames.join(', '),
    };

    widget.webSocketService.publish('/deliver', orderMessage);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderConfirmationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Items'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: selectedItems.keys.map((String key) {
                return ListTile(
                  leading: Image.asset(
                    'assets/icons/${key}.png', // Path to small icon
                    width: 40, // Increased size
                    height: 40, // Increased size
                  ),
                  title: Text(
                    key.capitalize(),
                    style: TextStyle(fontSize: 18), // Increased text size
                  ),
                  trailing: Checkbox(
                    value: selectedItems[key],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedItems[key] = value!;
                      });
                    },
                    activeColor: Colors.black, // Checkbox color
                    checkColor: Colors.white,  // Checkbox check color
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity, // Make button full width
              child: ElevatedButton(
                onPressed: _placeOrder,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20), // Increased size
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Proceed'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/robot.png',
            height: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20),
          Text(
            'Your order will be delivered soon.',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class EmptyPageWithControls extends StatefulWidget {
  final WebSocketService webSocketService;

  EmptyPageWithControls({required this.webSocketService});

  @override
  _EmptyPageWithControlsState createState() => _EmptyPageWithControlsState();
}

class _EmptyPageWithControlsState extends State<EmptyPageWithControls> {
  void _openDoor() {
    widget.webSocketService.publish('/door', {'data': 1});
  }

  void _closeDoor() {
    widget.webSocketService.publish('/door', {'data': 0});
  }

  void _deliver() {
    widget.webSocketService.publish('/room', {'data': 4}); // Send integer 4 to /room topic
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderDeliveredPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controls'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/robot.png',
            height: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _openDoor,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Open Door'),
              ),
              ElevatedButton(
                onPressed: _closeDoor,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Close Door'),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _deliver,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text('Deliver'),
          ),
        ],
      ),
    );
  }
}

class OrderDeliveredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Delivered'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/robot.png',
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(
              'Have a Nice Day',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


////////////////////////////////////////////////////////////////////////////////

// Finne master code

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 Text(
//                   'Enter Master ID',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Enter Passcode',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle Master Login logic
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class WebSocketService {
//   final String url;
//   WebSocketService(this.url);
//
//   void sendMessage(String message) {
//     // Simulating WebSocket message sending
//     print('Sending message to $url: $message');
//   }
//
//   void close() {
//     // Simulating WebSocket closure
//     print('WebSocket closed');
//   }
// }

///////////////////////////////////////////////////////////////////////////////////

// Master till orders

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Orders:',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             // Add the list of orders here or any other content you need
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class WebSocketService {
//   final String url;
//   WebSocketService(this.url);
//
//   void sendMessage(String message) {
//     // Simulating WebSocket message sending
//     print('Sending message to $url: $message');
//   }
//
//   void close() {
//     // Simulating WebSocket closure
//     print('WebSocket closed');
//   }
// }


////////////////////////////////////////////////////////////////////////////////////////////////

//// Till placing order before congratulations of the process

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Orders:',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             // Add the list of orders here or any other content you need
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RobotControlPage()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Go to Robot Control'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class RobotControlPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Control'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle open door action
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open the Door'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle close door action
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close the Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     title: Text('Confirm Delivery'),
//                     content: Text('Are you sure you want to start your delivery?'),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close the dialog
//                         },
//                         child: Text('No'),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close the dialog
//                           // Handle delivery start action
//                         },
//                         child: Text('Yes'),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class WebSocketService {
//   final String url;
//   WebSocketService(this.url);
//
//   void sendMessage(String message) {
//     // Simulating WebSocket message sending
//     print('Sending message to $url: $message');
//   }
//
//   void close() {
//     // Simulating WebSocket closure
//     print('WebSocket closed');
//   }
// }

///////////////////////////////////////////

/// The master app form has finished the app needs to configured to the json format to send and receive variables and the orders when received also needs to be formated well
// //
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage()),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Orders:',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             // Add the list of orders here or any other content you need
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RobotControlPage()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Go to Robot Control'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class RobotControlPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Robot Control'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle open door action
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open the Door'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle close door action
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close the Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     title: Text('Confirm Delivery'),
//                     content: Text('Are you sure you want to start your delivery?'),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close the dialog
//                         },
//                         child: Text('No'),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close the dialog
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(builder: (context) => DeliveryStartedPage()),
//                           );
//                         },
//                         child: Text('Yes'),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class DeliveryStartedPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Delivery Started'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Delivery mission has started',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// import 'dart:convert'; // Ensure this is imported
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late final Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   void _placeOrder() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => DeliveryStartedPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: StreamBuilder<Map<String, dynamic>>(
//           stream: _ordersStream,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (!snapshot.hasData) {
//               return Center(child: Text('No orders available.'));
//             } else {
//               final data = snapshot.data!;
//               final roomNumber = data['room_number'] ?? 'N/A';
//               final products = data['products'] ?? 'N/A';
//               return Column(
//                 children: [
//                   Card(
//                     child: ListTile(
//                       title: Text('Room Number: $roomNumber'),
//                       subtitle: Text('Products: $products'),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: _placeOrder,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                     child: Text('Place Order'),
//                   ),
//                 ],
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class DeliveryStartedPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Delivery Status'),
//       ),
//       body: Center(
//         child: Text(
//           'Your order will be delivered shortly.',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
///////////////////////////////////////////////////////////////////////////////////////////

// the code but loading indicator and publishin to both goal and door
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
// import 'dart:convert';
// import 'dart:async'; // Import this for StreamTransformer
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['products'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Order Details:',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     padding: EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Room Number: $roomNumber'),
//                         Text('Products: $products'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => OrderConfirmationPage(),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                     child: Text('Place Order'),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No orders available.'));
//           }
//         },
//       ),
//     );
//   }
// }
//
// class OrderConfirmationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add your logic to open the door here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         foregroundColor: Colors.white,
//                         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 18),
//                       ),
//                       child: Text('Open Door'),
//                     ),
//                     SizedBox(width: 20), // Add some spacing between buttons
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add your logic to close the door here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         foregroundColor: Colors.white,
//                         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 18),
//                       ),
//                       child: Text('Close Door'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DeliveryInProgressPage(),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Deliver'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class DeliveryInProgressPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Delivery In Progress'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'On My Way For Delivery',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Order Details:',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     padding: EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Room Number: $roomNumber'),
//                             Text('Products: $products'),
//                           ],
//                         ),
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => OrderConfirmationPage(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                             textStyle: TextStyle(fontSize: 16),
//                           ),
//                           child: Text('Place Order'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No orders available.'));
//           }
//         },
//       ),
//     );
//   }
// }
//
// class OrderConfirmationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add your logic to open the door here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         foregroundColor: Colors.white,
//                         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 18),
//                       ),
//                       child: Text('Open Door'),
//                     ),
//                     SizedBox(width: 20), // Add some spacing between buttons
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add your logic to close the door here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         foregroundColor: Colors.white,
//                         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 18),
//                       ),
//                       child: Text('Close Door'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => FinalConfirmationPage(),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Deliver'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class FinalConfirmationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Center(
//         child: Text(
//           'Your order will be delivered shortly.',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }


/////////////////////////////////////////////////////////////////////////////////////////
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: Text('Orders'),
//     ),
//     body: StreamBuilder<Map<String, dynamic>>(
//     stream: _ordersStream,
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//     return Center(child: CircularProgressIndicator());
//     } else if (snapshot.hasError) {
//     return Center(child: Text('Error: ${snapshot.error}'));
//     } else if (snapshot.hasData) {
//     final data = snapshot.data!;
//     final roomNumber = data['room_number'] ?? 'Unknown';
//     final products = data['room_order'] ?? 'Unknown';
//
//     return Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     Text(
//     'Order Details:',
//     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//     ),
//         SizedBox(height: 20),
//       Text(
//         'Room Number: $roomNumber',
//         style: TextStyle(fontSize: 18),
//       ),
//       SizedBox(height: 10),
//       Text(
//         'Products: $products',
//         style: TextStyle(fontSize: 18),
//       ),
//       SizedBox(height: 30),
//       ElevatedButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ConfirmationPage(webSocketService: widget.webSocketService)),
//           );
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.white,
//           padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//           textStyle: TextStyle(fontSize: 18),
//         ),
//         child: Text('Place Order'),
//       ),
//     ],
//     ),
//     );
//     } else {
//       return Center(child: Text('No data received.'));
//     }
//     },
//     ),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.webSocketService.close();
//     super.dispose();
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final WebSocketService webSocketService;
//
//   ConfirmationPage({required this.webSocketService});
//
//   void _sendDoorCommand(int value) {
//     webSocketService.send('door', value);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(0),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Order will be delivered shortly!')),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


///////////////////////////////////////////////////////////////////////////////////////////////////

// // Full except delvier button
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Room Number: $roomNumber',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           'Products: $products',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Implement the logic to start delivery
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                     ),
//                     child: Text('Start Delivery'),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No orders available.'));
//           }
//         },
//       ),
//     );
//   }
// }


/////////////////////////////////////////////////////////////////////////////////

//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Room Number: $roomNumber',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           'Products: $products',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ConfirmationPage(
//                             webSocketService: widget.webSocketService,
//                           ),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                     child: Text('Place Order'),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No data received.'));
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.webSocketService.close();
//     super.dispose();
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final WebSocketService webSocketService;
//
//   ConfirmationPage({required this.webSocketService});
//
//   void _sendDoorCommand(int value) {
//     webSocketService.send('door', value);
//   }
//
//   void _navigateToOrderDeliveredPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderDeliveredPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(0),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _navigateToOrderDeliveredPage(context),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderDeliveredPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Room Number: $roomNumber',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Products: $products',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ConfirmationPage(
//                             webSocketService: widget.webSocketService,
//                           ),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                     child: Text('Place Order'),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No data received.'));
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.webSocketService.close();
//     super.dispose();
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final WebSocketService webSocketService;
//
//   ConfirmationPage({required this.webSocketService});
//
//   void _sendDoorCommand(int value) {
//     webSocketService.send('/door', value);
//   }
//
//   void _navigateToOrderDeliveredPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderDeliveredPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(0),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _navigateToOrderDeliveredPage(context),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderDeliveredPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

////////////////////////////////////////////////////////////////////////////////

// Full without deliver button
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart';
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Room Number: $roomNumber',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Products: $products',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ConfirmationPage(
//                             webSocketService: widget.webSocketService,
//                           ),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                     child: Text('Place Order'),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No data received.'));
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.webSocketService.close();
//     super.dispose();
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final WebSocketService webSocketService;
//
//   ConfirmationPage({required this.webSocketService});
//
//   void _sendDoorCommand(int value) {
//     webSocketService.send('/door', value);
//   }
//
//   void _navigateToOrderDeliveredPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderDeliveredPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(0),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _navigateToOrderDeliveredPage(context),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderDeliveredPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


////////////////////////////////////////////////////////////////////
//
// // lib/main.dart
// import 'package:flutter/material.dart';
// import 'websocket_service.dart'; // Ensure this import is present
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Text(
//                     'Room Number: $roomNumber',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Products: $products',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ConfirmationPage(
//                             webSocketService: widget.webSocketService,
//                           ),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                       textStyle: TextStyle(fontSize: 18),
//                     ),
//                     child: Text('Place Order'),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No data received.'));
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.webSocketService.close();
//     super.dispose();
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final WebSocketService webSocketService;
//
//   ConfirmationPage({required this.webSocketService});
//
//   void _sendDoorCommand(int value) {
//     webSocketService.send('/door', value);
//   }
//
//   void _sendRoomCommand(int value) {
//     webSocketService.send('/room', value);
//   }
//
//   void _navigateToOrderDeliveredPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderDeliveredPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(0),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _sendRoomCommand(1); // Send 1 to '/room' when Deliver is pressed
//                 _navigateToOrderDeliveredPage(context);
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderDeliveredPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Your order will be delivered shortly.',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

////////////////////////////////////////////////////////////////////////////////////////////////////

/// The Optimum code for the master
//
// import 'package:flutter/material.dart';
// import 'websocket_service.dart'; // Ensure this import is present
// import 'dart:convert';
//
// void main() {
//   runApp(RobotDeliveryApp());
// }
//
// class RobotDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Robot Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: IPAndPortEntryPage(),
//     );
//   }
// }
//
// class IPAndPortEntryPage extends StatefulWidget {
//   @override
//   _IPAndPortEntryPageState createState() => _IPAndPortEntryPageState();
// }
//
// class _IPAndPortEntryPageState extends State<IPAndPortEntryPage> {
//   final TextEditingController ipController = TextEditingController();
//   final TextEditingController portController = TextEditingController();
//
//   void _navigateToMasterPage(BuildContext context) {
//     final String ip = ipController.text.trim();
//     final String port = portController.text.trim();
//     if (ip.isNotEmpty && port.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MasterPage(ip: ip, port: port),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both IP address and port number')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome to our Delivery Mobile Robot",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 TextField(
//                   controller: ipController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter IP Address',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: portController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter Port Number',
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () => _navigateToMasterPage(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Continue'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MasterPage extends StatefulWidget {
//   final String ip;
//   final String port;
//
//   MasterPage({required this.ip, required this.port});
//
//   @override
//   _MasterPageState createState() => _MasterPageState();
// }
//
// class _MasterPageState extends State<MasterPage> {
//   final TextEditingController masterIdController = TextEditingController();
//   final TextEditingController passcodeController = TextEditingController();
//   late WebSocketService webSocketService;
//
//   @override
//   void initState() {
//     super.initState();
//     webSocketService = WebSocketService('ws://${widget.ip}:${widget.port}/rosbridge_websocket');
//   }
//
//   void _navigateToOrdersPage() {
//     if (masterIdController.text.trim().isEmpty || passcodeController.text.trim().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter both Master ID and passcode')),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => OrdersPage(webSocketService: webSocketService)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O6U Delivery Robot - Master'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/robot.png',
//                   height: 200,
//                   fit: BoxFit.contain,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   controller: masterIdController,
//                   decoration: InputDecoration(
//                     labelText: 'Master ID',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: passcodeController,
//                   decoration: InputDecoration(
//                     labelText: 'Passcode',
//                     labelStyle: TextStyle(color: Colors.black),
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: _navigateToOrdersPage,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Log In'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     webSocketService.close();
//     masterIdController.dispose();
//     passcodeController.dispose();
//     super.dispose();
//   }
// }
//
// class OrdersPage extends StatefulWidget {
//   final WebSocketService webSocketService;
//
//   OrdersPage({required this.webSocketService});
//
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }
//
// class _OrdersPageState extends State<OrdersPage> {
//   late Stream<Map<String, dynamic>> _ordersStream;
//
//   @override
//   void initState() {
//     super.initState();
//     _ordersStream = widget.webSocketService.messages;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders'),
//       ),
//       body: StreamBuilder<Map<String, dynamic>>(
//         stream: _ordersStream,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             final roomNumber = data['room_number'] ?? 'Unknown';
//             final products = data['room_order'] ?? 'Unknown';
//
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Room Number: $roomNumber',
//                               style: TextStyle(fontSize: 18),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               'Products: $products',
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 20),
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => ConfirmationPage(
//                                 webSocketService: widget.webSocketService,
//                               ),
//                             ),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           foregroundColor: Colors.white,
//                           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                           textStyle: TextStyle(fontSize: 18),
//                         ),
//                         child: Text('Place Order'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No data received.'));
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.webSocketService.close();
//     super.dispose();
//   }
// }
//
// class ConfirmationPage extends StatelessWidget {
//   final WebSocketService webSocketService;
//
//   ConfirmationPage({required this.webSocketService});
//
//   void _sendDoorCommand(int value) {
//     webSocketService.send('/door', value);
//   }
//
//   void _sendRoomCommand(int value) {
//     webSocketService.send('/room', value);
//   }
//
//   void _navigateToOrderDeliveredPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => OrderDeliveredPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(1),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Open Door'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => _sendDoorCommand(0),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text('Close Door'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _sendRoomCommand(1); // Send 1 to '/room' when Deliver is pressed
//                 _navigateToOrderDeliveredPage(context);
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               child: Text('Deliver'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OrderDeliveredPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Delivered'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/robot.png',
//               height: 200,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Order Is On Way ',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
