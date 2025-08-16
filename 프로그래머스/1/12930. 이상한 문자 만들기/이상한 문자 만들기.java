class Solution {
    public String solution(String s) {
        String answer = "";
        char[] chars = s.toCharArray();
        int index = 0;
        for(int i = 0; i< s.length(); i++){
            if(chars[i]==' '){
                index = 0;
            }else{
                if(index%2==0){
                    chars[i] = Character.toUpperCase(chars[i]);
                }else{
                    chars[i] = Character.toLowerCase(chars[i]);
                }
                index++;
            }    
        }
        answer = new String(chars);
        return answer;
    }
}