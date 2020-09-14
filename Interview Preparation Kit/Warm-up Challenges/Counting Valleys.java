# problem: https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup&h_r=next-challenge&h_v=zen


  
  public static int countingValleys(int steps, String path) {
    // Write your code here
    int valley = 0;
    int level = 0;
    boolean belowSea = false;
    for(int i =0; i < steps; i++){
        char slope = path.charAt(i);
        if(slope == 'U') level++;
        else level--;

        if(!belowSea && level <0){
            valley++;
            belowSea = true;
        }
        if(level >= 0){
            belowSea = false;
        }
    }System.out.println(valley);
    return valley;
    }
