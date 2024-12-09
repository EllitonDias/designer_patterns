### **Nome do Padrão**
Padrão Facade (Fachada)

---

### **Problema**
Uma loja online possui vários subsistemas para processamento de pedidos, como pagamento, envio e notificações. Gerenciar a comunicação direta com esses sistemas é complexo e propenso a erros.

---

### **Solução**
O padrão Facade foi implementado para simplificar a interação com os subsistemas. Uma única classe centraliza a orquestração das operações de pagamento, envio e notificações, fornecendo uma interface simples para o cliente.

---

### **Consequência**
O uso da Fachada reduz o acoplamento entre os componentes, melhora a manutenção do código e facilita a reutilização dos subsistemas em outras partes do sistema.

---
