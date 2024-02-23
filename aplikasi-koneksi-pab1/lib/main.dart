import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // variabel untuk menyimpan status koneksi internet
  late bool isConnected;

// Objek untuk memeriksa koneksi internet
  final Connectivity_connectivity = Connectivity();

  // Mendengarkan perubahan koneksi
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // set nilai awal status koneksi sebagai true
    isConnected = true;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    // Membatalkan langganan saat widget dihancurkan untuk menghindari kebocoran yang lain
    _connectivitySubscription?.cancel();
  }

  // Fungsi untuk memeriksa status koneksi internet saat  pertamakali dijalankan
  Future<void> _initConnectionStatus() async {
    final result = await _connectivity.checkConnectivity();
    setState(() {
      // Perbarui Status Koneksi berdasarkan status pengecekan
      isConnected = result != ConnectivityResult.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
          
          child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 1000),
        child: Image.asset(),
      )
          
          ),
    );
  }
}
