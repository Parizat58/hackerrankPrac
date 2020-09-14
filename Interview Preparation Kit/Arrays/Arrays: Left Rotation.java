# problem: https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays


// Complete the rotLeft function below.
    static int[] rotLeft(int[] a, int d) {
   int[] ar = new int[a.length];
   int j=0;
   for(int i=0; i<a.length; i++){
       if(i < a.length-d){
           ar[i]=a[i+d];
       }else{
           ar[i]=a[j++];
       }
      
   } return ar;
    }
