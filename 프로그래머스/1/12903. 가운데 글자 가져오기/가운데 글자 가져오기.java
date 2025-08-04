class Solution {
    public String solution(String s) {
        String answer = "";
        int a = s.length();
        if(a%2==1){
            char c = s.charAt(a/2);
            answer = String.valueOf(c);
        }else{
            char c = s.charAt((a/2)-1);
            char h = s.charAt(a/2);
            answer = String.valueOf(c)+String.valueOf(h);
        }
        return answer;
    }
}