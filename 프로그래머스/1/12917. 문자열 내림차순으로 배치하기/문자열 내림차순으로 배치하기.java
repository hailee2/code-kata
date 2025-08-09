import java.util.Arrays;

class Solution {
    public String solution(String s) {
        char[] chars = s.toCharArray();
        Arrays.sort(chars);
        char[] chars2 = new char[chars.length];
        for(int i = 0; i<=chars.length-1; i++){
            chars2[i] = chars[chars.length-1-i];
        }
        String answer = new String(chars2);
        return answer;
    }

}