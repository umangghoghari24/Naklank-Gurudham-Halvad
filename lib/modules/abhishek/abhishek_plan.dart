import 'abhishek_controller.dart';

enum AbhishekPlanType { oneTime, monthly }

class AbhishekPlan {
  final AbhishekType type;
  final AbhishekPlanType planType;
  final int price;

  AbhishekPlan({
    required this.type,
    required this.planType,
    required this.price,
  });
}
