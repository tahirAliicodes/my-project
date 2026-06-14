import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.dark().copyWith(
          primary: Colors.blue[900], // Dark blue
          background: Colors.blue[900], // Dark blue background
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _messageController = TextEditingController();
  String _result = '';
  bool _hideMessage = true;
  bool _showResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Encryption and Decryption',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 24,),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                labelText: 'Enter Message',
                suffixIcon: IconButton(
                  icon: _hideMessage ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _hideMessage = !_hideMessage;
                    });
                  },
                ),
              ),
              obscureText: _hideMessage,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _result = encrypt(_messageController.text);
                  _showResult = true;
                });
              },
              child: Text('Encrypt', style: TextStyle(fontSize: 18,color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _result = decrypt(_result);
                  _showResult = true;
                });
              },
              child: Text('Decrypt', style: TextStyle(fontSize: 18,color: Colors.white),),
            ),
            SizedBox(height: 20),
            if (_showResult)
              Text(
                'Result: $_result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }

  String encrypt(String message) {
   
    // Dummy key for illustration purposes. In a real scenario, you would use a proper encryption key.
    String key = 'secretkey';

    StringBuffer encrypted = StringBuffer();

    for (int i = 0; i < message.length; i++) {
      int charCode = message.codeUnitAt(i) + key.codeUnitAt(i % key.length);
      encrypted.write(String.fromCharCode(charCode));
    }

    return encrypted.toString();
  }

  String decrypt(String encryptedMessage) {
    // Dummy key for illustration purposes. In a real scenario, you would use the same key used for encryption.
    String key = 'secretkey';

    StringBuffer decrypted = StringBuffer();

    for (int i = 0; i < encryptedMessage.length; i++) {
      int charCode = encryptedMessage.codeUnitAt(i) - key.codeUnitAt(i % key.length);
      decrypted.write(String.fromCharCode(charCode));
    }

    return decrypted.toString();
  }
}
