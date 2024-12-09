import '../models/order.dart';

class OrderRepository {
  void saveOrder(Order order) {
    print('Pedido ${order.orderId} salvo no banco de dados.');
  }
}
