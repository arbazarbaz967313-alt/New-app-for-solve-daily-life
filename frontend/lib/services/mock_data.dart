import 'package:flutter/material.dart';
import 'package:rozhelp_app/models/provider_quote.dart';
import 'package:rozhelp_app/models/service_category.dart';

const categories = [
  ServiceCategory(id: 'plumber', name: 'Plumber', icon: Icons.plumbing),
  ServiceCategory(id: 'electrician', name: 'Electrician', icon: Icons.electrical_services),
  ServiceCategory(id: 'cleaning', name: 'Cleaning', icon: Icons.cleaning_services),
  ServiceCategory(id: 'ro', name: 'RO Repair', icon: Icons.water_drop_outlined),
  ServiceCategory(id: 'ac', name: 'AC Repair', icon: Icons.ac_unit),
  ServiceCategory(id: 'maid', name: 'Maid', icon: Icons.home_repair_service),
];

const quotes = [
  ProviderQuote(
    id: 'q1',
    providerName: 'Ravi Plumber',
    rating: 4.8,
    etaMinutes: 25,
    price: 499,
    note: 'Leakage aur fitting same visit me check kar dunga.',
  ),
  ProviderQuote(
    id: 'q2',
    providerName: 'Aman Electric Works',
    rating: 4.7,
    etaMinutes: 35,
    price: 599,
    note: 'Same day service, material extra if required.',
  ),
  ProviderQuote(
    id: 'q3',
    providerName: 'Neha Home Cleaning',
    rating: 4.9,
    etaMinutes: 40,
    price: 699,
    note: 'Deep cleaning team available before 6 PM.',
  ),
];
