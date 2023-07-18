class Cart{

      int? id;
    String? productId;
    String? productname;
    int? initialPrice;
    int? productprice;
    int? quantity;
    String? unitTag;
    String? image;
  
  Cart({
    required this.id,
    required this.productId,
    required this.productname,
    required this.initialPrice,
    required this.productprice,
    required this.quantity,
    required this.unitTag,
    required this.image,
  });

  Cart.fromMap(Map<dynamic ,dynamic> res) 
   : id = res ['id'],
   productId = res ['productId'],
   productname = res ['productname'],
   initialPrice = res ['initialPrice'],
   productprice = res ['productprice'],
   quantity = res ['quantity'],
   unitTag = res ['unitTag'],
   image = res ['image'];

   Map<String ,  dynamic> toMap(){
    return {
      'id' : id,
      'productId' : productId,
      'productname' : productname,
      'initialPrice' : initialPrice,
      'productprice' : productprice,
      'quantity' : quantity,
      'unitTag' : unitTag,
      'image' : image,
    };
   }

}