public class Test2 {
  public static void main(String[] args) {
    StringBuilder out = new StringBuilder();
    for( int i = 0 ; i < 10000; i++ ) {
        out.append(i);
    }
    System.out.println(out.toString());
  }
}
