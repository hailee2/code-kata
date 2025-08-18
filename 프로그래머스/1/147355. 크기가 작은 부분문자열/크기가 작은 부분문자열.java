class Solution {
    public int solution(String t, String p) {
        int answer = 0;
        for(int i = 0; i<t.length()-p.length()+1; i++){
            Long x = Long.parseLong(t.substring(i,i+p.length()));
            Long y = Long.parseLong(p);
            if(x<=y){
                answer++;
            }
        }
        return answer;
    }
}