import 'package:flutter/material.dart';
import 'package:wallet_movil/historial.dart';
import 'tarjetas.dart';
import 'historial.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    WalletHomeWidget(),
    Historial(),
    Tarjetas(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.door_back_door_outlined), onPressed: () {}),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_sharp),
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Tarjetas',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 94, 16, 241),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class WalletHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¡Hola Usuario!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Última conexión 29/05/2024',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.credit_card, color: Colors.blue, size: 40),
              title: Text('Formas de pago.'),
              subtitle: Text('3 Tarjetas disponibles.'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navegar a la vista de Tarjetas
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tarjetas()),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.mail_outline, size: 40),
                  title: Text('Notificaciones.'),
                ),
                Divider(),
                ListTile(
                  trailing: Icon(Icons.notifications_none, size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}