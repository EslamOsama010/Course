class CartController{
  int quantity = 2;

  void plus(){
    quantity++;
  }
  void minus(){
    if(quantity>0){
      quantity--;
    }
  }
}