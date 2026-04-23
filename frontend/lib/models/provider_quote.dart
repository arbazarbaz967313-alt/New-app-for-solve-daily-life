class ProviderQuote {
  final String id;
  final String providerName;
  final double rating;
  final int etaMinutes;
  final int price;
  final String note;

  const ProviderQuote({
    required this.id,
    required this.providerName,
    required this.rating,
    required this.etaMinutes,
    required this.price,
    required this.note,
  });
}
