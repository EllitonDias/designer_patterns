import 'package:designer_patterns/core/facade.dart';
import 'package:designer_patterns/models/order.dart';
import 'package:designer_patterns/repositories/order_repository.dart';
import 'package:designer_patterns/services/notification_service.dart';
import 'package:designer_patterns/services/payment_service.dart';
import 'package:designer_patterns/services/shipping_service.dart';



void main() {
  // Instanciando os serviços e repositório
  final paymentService = PaymentService();
  final shippingService = ShippingService();
  final notificationService = NotificationService();
  final orderRepository = OrderRepository();

  // Criando a fachada
  final orderFacade = OrderFacade(
    paymentService,
    shippingService,
    notificationService,
    orderRepository,
  );  

  // Criando um pedido fictício
  final order = Order(orderId: '12345', amount: 250.0);

  // Fazendo o pedido
  orderFacade.placeOrder(order);
}

