class Solution {
    public String solution(String s, int n) {
        String answer = "";
        char[] chars = s.toCharArray();
        for(int i = 0; i<s.length(); i++){
            if(chars[i] >= 'a' && chars[i] <= 'z') {
                chars[i] = (char) ('a' + (chars[i] - 'a' + n) % 26);
            }
            if(chars[i] >= 'A' && chars[i] <= 'Z') {
               chars[i] = (char) ('A' + (chars[i] - 'A' + n) % 26);
            }
        }
        answer = new String(chars);
        return answer;
    }
}