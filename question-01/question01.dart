void main() {
    // Creating a list of fruits represented as maps
    List<Map<String, dynamic>> fruits = [
        {'name': 'Apple', 'color': 'Red', 'price': 2.5},
        {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
        {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
    ];

    // Displaying original fruit details
    //print("Original Fruit Details before Discount:");
    displayFruitDetails(fruits);

    // Applying 10% discount to the above fruit prices
    applyPriceDiscount(fruits, 10);

    // Displaying new fruit prices after applying discount
    print("\nFruit Details After Applying 10% Discount:");
    displayFruitDetails(fruits);
}

// Display fruit details
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
    print("Original Fruit Details before Discount:");
    for (var fruit in fruits) {
        print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
    }
}

// Function to apply a percentage discount to fruit prices
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
    for (var fruit in fruits) {
        double originalPrice = fruit['price'];
        double discountedPrice = originalPrice * (1 - discountPercentage / 100);
        fruit['price'] = discountedPrice;
    }
}
