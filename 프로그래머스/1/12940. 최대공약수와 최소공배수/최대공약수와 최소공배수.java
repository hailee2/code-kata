class Solution {
    public int[] solution(int n, int m) {
        int[] answer = new int[2];
        int originm = m;
        int originn = n;
        while(m != 0){
            int temp = m;
            m = n%m;
            n = temp;
        }
        answer[0] = n;
        answer[1] = originm*originn / answer[0];
        return answer;
    }
}