# problem: https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup


static int jumpingOnClouds(int[] c) {
    int count = 0;

    for(int i = 0; i < c.length-1; i++){
        if(c[i] ==0){
            count++;
        }
        if(i+2 < c.length && c[i+2] ==0){
        i++;
        }
    }
    return count;

    }


