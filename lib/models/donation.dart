class Donation {
  final String title;
  final String organization;
  final String imageUrl;
  final double amountRaised;
  final double goalAmount;
  final int daysLeft;

  Donation({
    required this.title,
    required this.organization,
    required this.imageUrl,
    required this.amountRaised,
    required this.goalAmount,
    required this.daysLeft,
  });

  Donation copyWith({
    String? title,
    String? organization,
    String? imageUrl,
    double? amountRaised,
    double? goalAmount,
    int? daysLeft,
  }) {
    return Donation(
      title: title ?? this.title,
      organization: organization ?? this.organization,
      imageUrl: imageUrl ?? this.imageUrl,
      amountRaised: amountRaised ?? this.amountRaised,
      goalAmount: goalAmount ?? this.goalAmount,
      daysLeft: daysLeft ?? this.daysLeft,
    );
  }
}
