# problem: https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup&h_r=next-challenge&h_v=zen


 // Complete the repeatedString function below.
    static long repeatedString(String s, long n) {
      long l = s.length(); 
      long count = 0;
      long count1 = 0;
      if(!s.contains("a")) return 0;
      for(int i=0; i < l; i++){
          if(s.charAt(i) == 'a'){
           count++;
          }
      }
      for(int i=0; i < (n%l); i++){
       if(s.charAt(i)=='a'){
           count1++;
       }
      }
      count = count1 + count*(n/l);
      System.out.println(count);
      return count;
    }
