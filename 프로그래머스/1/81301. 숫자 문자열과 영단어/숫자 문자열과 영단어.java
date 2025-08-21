import java.util.HashMap;
import java.util.Map;

class Solution {
    public int solution(String s) {
        Map<String, Integer> map = new HashMap<>();
        map.put("zero",0);
        map.put("one",1);
        map.put("two",2);
        map.put("three",3);
        map.put("four",4);
        map.put("five",5);
        map.put("six",6);
        map.put("seven",7);
        map.put("eight",8);
        map.put("nine",9);
        
        StringBuilder answers = new StringBuilder();
        for(int i = 0; i<s.length(); i++){
            if(s.charAt(i)>='0' && s.charAt(i)<='9'){
            answers.append(s.charAt(i)-'0');
        }else{
            for (int len = 3; len <= 5; len++) { // 단어 길이 범위
                if (i + len <= s.length()) {
                    String sub = s.substring(i, i + len);
                    if (map.containsKey(sub)) {
                        answers.append(map.get(sub));
                        i += len - 1;
                        break;
                    }
                }
            }
        } 
        }
        int answer = Integer.parseInt(answers.toString());
        return answer;

            }
        }