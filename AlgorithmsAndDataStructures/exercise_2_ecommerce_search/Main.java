public class Main {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Phone", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Bag", "Fashion")
        };

        Product result1 =
                SearchService.linearSearch(products, 104);

        System.out.println("Linear Search Result:");
        System.out.println(result1);

        Product result2 =
                SearchService.binarySearch(products, 104);

        System.out.println("\nBinary Search Result:");
        System.out.println(result2);
    }
}
