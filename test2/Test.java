public class Test {
  public static void main(String[] args) {
    String out = "";
    for( int i = 0; i < 10000 ; i++ ) {
        out = out + i;
    }
    System.out.println(out);
  }
}
