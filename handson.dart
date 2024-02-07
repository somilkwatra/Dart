import 'dart:io';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Item {
  Product product;
  int quantity;

  Item(this.product, this.quantity);
}

class ShoppingCart {
  List<Item> items = [];

  void addItem(Product product, int quantity) {
    var existingItemIndex = items.indexWhere((item) => item.product.name == product.name);
    if (existingItemIndex != -1) {
      items[existingItemIndex].quantity += quantity;
    } else {
      items.add(Item(product, quantity));
    }
  }

  void removeItem(Product product, int quantity) {
    var existingItemIndex = items.indexWhere((item) => item.product.name == product.name);
    if (existingItemIndex != -1) {
      if (items[existingItemIndex].quantity > quantity) {
        items[existingItemIndex].quantity -= quantity;
      } else {
        items.removeAt(existingItemIndex);
      }
    }
  }

  void showCart() {
    if (items.isEmpty) {
      print("Your shopping cart is empty.");
    } else {
      print("Shopping Cart:");
      for (var item in items) {
        print("- ${item.quantity}x ${item.product.name} (${item.product.price} each)");
      }
      print("Total price before discount: ${calculateTotalPrice()}");
      print("Total price after 10% discount: ${applyDiscount(10)}");
    }
  }

  double calculateTotalPrice() {
    double total = 0;
    for (var item in items) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  double applyDiscount(double discountPercentage) {
    double total = calculateTotalPrice();
    double discountAmount = total * (discountPercentage / 100);
    return total - discountAmount;
  }
}
void addNewItem(ShoppingCart cart) {
  stdout.write('Enter product name: ');
  var name = stdin.readLineSync()?.trim();

  stdout.write('Enter product price: ');
  var priceStr = stdin.readLineSync()?.trim();
  double price;
  try {
    price = double.parse(priceStr ?? '');
  } catch (e) {
    print('Invalid price. Please enter a valid number.');
    return;
  }

  stdout.write('Enter quantity: ');
  var quantityStr = stdin.readLineSync()?.trim();
  int quantity;
  try {
    quantity = int.parse(quantityStr ?? '');
  } catch (e) {
    print('Invalid quantity. Please enter a valid number.');
    return;
  }

  var product = Product(name!, price);
  cart.addItem(product, quantity);
  print('Item added to the cart.');
}

void removeItemFromCart(ShoppingCart cart) {
  stdout.write('Enter product name to remove: ');
  var name = stdin.readLineSync()?.trim();

  stdout.write('Enter quantity to remove: ');
  var quantityStr = stdin.readLineSync()?.trim();
  int quantity;
  try {
    quantity = int.parse(quantityStr ?? '');
  } catch (e) {
    print('Invalid quantity. Please enter a valid number.');
    return;
  }

  var product = Product(name!, 0); // Price doesn't matter for removal
  cart.removeItem(product, quantity);
  print('Item removed from the cart.');
}



void main() {
  var cart = ShoppingCart();

  while (true) {
    print("Choose an option:");
    print("1. Show shopping cart");
    print("2. Add item");
    print("3. Remove item");
    print("4. Done shopping");

    var option = stdin.readLineSync();
    switch (option) {
      case '1':
        cart.showCart();
        break;
      case '2':
        addNewItem(cart);
        break;
      case '3':
        removeItemFromCart(cart);
        break;
      case '4':
        print("Thank you for shopping!");
        return;
      default:
        print("Invalid option. Please choose again.");
        break;
    }
  }
}

