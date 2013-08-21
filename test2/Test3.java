public class Test3 {
  public static void main(String[] args) {
    String out = "";
    for( int i = 0; i < 10000 ; i++ ) {
        out = out.concat("1");
    }
    System.out.println(out);
  }
}
