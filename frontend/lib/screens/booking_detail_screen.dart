import 'package:flutter/material.dart';

class BookingDetailScreen extends StatelessWidget {
  const BookingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking Details')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Booking Confirmed', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
                SizedBox(height: 8),
                Text('Provider 25 minutes me pahunch jayega.'),
              ],
            ),
          ),
          const SizedBox(height: 18),
          const _DetailTile(title: 'Service', value: 'Bathroom tap leakage repair'),
          const _DetailTile(title: 'Provider', value: 'Ravi Plumber'),
          const _DetailTile(title: 'Address', value: 'Vijay Nagar, Indore'),
          const _DetailTile(title: 'Amount', value: '₹499'),
          const _DetailTile(title: 'Payment Mode', value: 'Cash / Online'),
          const SizedBox(height: 18),
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.call_outlined),
            label: Text('Call Provider'),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
            label: Text('Chat Support'),
          )
        ],
      ),
    );
  }
}

class _DetailTile extends StatelessWidget {
  final String title;
  final String value;
  const _DetailTile({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Colors.black54)),
        subtitle: Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
