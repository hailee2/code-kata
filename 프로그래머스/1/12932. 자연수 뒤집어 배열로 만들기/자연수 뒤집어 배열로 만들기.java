class Solution {
    public int[] solution(long n) {
        String str = String.valueOf(n);
        int[] answer = new int[str.length()];
        
        for(int i = 0; n>0; i++){
            answer[i] = (int)(n%10);
            n = n/10;
        }
        
        return answer;
    }
}