import 'package:flutter/material.dart';

class Historial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movimientos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.credit_card_rounded, color: Colors.amber, size: 80),
                    Row(
                      children: [
                        Text('Encendida', style: TextStyle(color: Colors.green)),
                        Switch(value: true, onChanged: (bool value) {}),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '\$2,000.00 MXN',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Actualización 29/05/2024 | 2:30 pm',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('7 eleven', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('-\$100.00', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text('29/05/2024 | 2:00 pm', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}