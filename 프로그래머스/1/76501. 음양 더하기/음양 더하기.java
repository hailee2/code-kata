class Solution {
    public int solution(int[] absolutes, boolean[] signs) {
        int answer = 123456789;
        int j = 0;
        int k = 0;
        for(int i = 0; i<signs.length; i++){
            if(signs[i]){
                j += absolutes[i];
            }else if(!signs[i]){
                k -= absolutes[i];
            }
        }
        answer = j+k;
        return answer;
    }
}