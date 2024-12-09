import 'package:designer_patterns/repositories/order_repository.dart';
import 'package:designer_patterns/services/notification_service.dart';
import 'package:designer_patterns/services/payment_service.dart';
import 'package:designer_patterns/services/shipping_service.dart';


import '../models/order.dart';

class OrderFacade {
  final PaymentService _paymentService;
  final ShippingService _shippingService;
  final NotificationService _notificationService;
  final OrderRepository _orderRepository;
 
  OrderFacade(
    this._paymentService,
    this._shippingService,
    this._notificationService,
    this._orderRepository,
  );

  void placeOrder(Order order) {
    print('Processando pedido...');
    _paymentService.processPayment(order.amount);
    _shippingService.shipOrder(order.orderId);
    _notificationService.notifyCustomer(order.orderId);
    _orderRepository.saveOrder(order);
    print('Pedido concluído com sucesso!!!');
  } 
}
