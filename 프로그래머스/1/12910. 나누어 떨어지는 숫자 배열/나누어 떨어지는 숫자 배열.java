import java.util.Arrays; 

class Solution {
    public int[] solution(int[] arr, int divisor) {
        //1. 배열 answer 길이 구하기
        int count = 0;    
        for(int i =0; i<arr.length; i++){
            if(arr[i]%divisor == 0){
                count++;
            }    
        }
        int[] answer = new int[count];
        //2.조건에 맞는 값 배열 answer에 넣어주기
        int j = 0;
        for(int i =0; i<arr.length; i++){
            if(arr[i] % divisor == 0){
                answer[j] = arr[i]; 
                j++;
            }
        }
        //3.정렬하기
        Arrays.sort(answer);
        //4.예외 처리
        if(answer.length == 0){
          return new int[] {-1};
        }else{
            return answer;
        }        
    }
}