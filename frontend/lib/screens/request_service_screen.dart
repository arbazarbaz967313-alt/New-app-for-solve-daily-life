import 'package:flutter/material.dart';
import 'package:rozhelp_app/services/mock_data.dart';
import 'package:rozhelp_app/widgets/primary_button.dart';
import 'package:rozhelp_app/widgets/section_title.dart';

class RequestServiceScreen extends StatefulWidget {
  const RequestServiceScreen({super.key});

  @override
  State<RequestServiceScreen> createState() => _RequestServiceScreenState();
}

class _RequestServiceScreenState extends State<RequestServiceScreen> {
  String categoryId = 'plumber';
  bool urgent = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Request')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const SectionTitle(title: 'Service details'),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            value: categoryId,
            items: categories
                .map((e) => DropdownMenuItem(value: e.id, child: Text(e.name)))
                .toList(),
            onChanged: (value) => setState(() => categoryId = value ?? categoryId),
            decoration: const InputDecoration(labelText: 'Category'),
          ),
          const SizedBox(height: 12),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Issue title',
              hintText: 'e.g. Bathroom tap leak ho raha hai',
            ),
          ),
          const SizedBox(height: 12),
          const TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Description',
              hintText: 'Problem detail likhein taaki provider better quote bhej sake.',
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(child: TextField(decoration: InputDecoration(labelText: 'Budget min'))),
              SizedBox(width: 12),
              Expanded(child: TextField(decoration: InputDecoration(labelText: 'Budget max'))),
            ],
          ),
          const SizedBox(height: 12),
          SwitchListTile.adaptive(
            value: urgent,
            activeColor: const Color(0xFF1565C0),
            contentPadding: EdgeInsets.zero,
            title: const Text('Urgent request'),
            subtitle: const Text('Nearby providers ko high priority me bheja jayega'),
            onChanged: (value) => setState(() => urgent = value),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFE3F2FD),
                child: Icon(Icons.location_on_outlined, color: Color(0xFF1565C0)),
              ),
              title: const Text('Current location'),
              subtitle: const Text('Vijay Nagar, Indore'),
              trailing: TextButton(onPressed: () {}, child: const Text('Change')),
            ),
          ),
          const SizedBox(height: 20),
          PrimaryButton(
            text: 'Get Quotes',
            icon: Icons.send_rounded,
            onPressed: () => Navigator.pushNamed(context, '/quotes'),
          ),
        ],
      ),
    );
  }
}
