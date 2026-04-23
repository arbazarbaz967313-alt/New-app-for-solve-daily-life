import 'package:flutter/material.dart';
import 'package:rozhelp_app/services/mock_data.dart';
import 'package:rozhelp_app/widgets/primary_button.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Received Quotes')),
      body: ListView.separated(
        padding: const EdgeInsets.all(18),
        itemCount: quotes.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final quote = quotes[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xFFE3F2FD),
                        child: Icon(Icons.person_outline, color: Color(0xFF1565C0)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(quote.providerName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                            Text('⭐ ${quote.rating} • ETA ${quote.etaMinutes} min'),
                          ],
                        ),
                      ),
                      Text('₹${quote.price}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1565C0))),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Text(quote.note),
                  const SizedBox(height: 18),
                  PrimaryButton(
                    text: 'Book Now',
                    icon: Icons.check_circle_outline,
                    onPressed: () => Navigator.pushNamed(context, '/booking'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
