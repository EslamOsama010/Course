class GummyController{
  int quantity = 1;

void plus(){
  quantity++;
}
void minus(){
  if(quantity>0){
    quantity--;
  }
}
}