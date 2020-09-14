#problem(https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
)

 // Complete the sockMerchant function below.
    static int sockMerchant(int n, int[] ar) {
      Set<Integer> colors = new HashSet<>();
      int pairs = 0;

    for (int i = 0; i < n; i++) {
        if (!colors.contains(ar[i])) {
            colors.add(ar[i]);
        } else {
            pairs++;
            colors.remove(ar[i]);
        }
    }
    return pairs;
    } 

