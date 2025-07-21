import java.util.List;
import java.util.ArrayList;

class Solution {
    public int solution(int n) {
       int answer=0;
        List<Integer> result = new ArrayList<>();
        for(int x = 1; x<n; x++){
           if(n%x == 1){
             result.add(x);
             answer = result.get(0);}
        }
        return answer;
    }
}