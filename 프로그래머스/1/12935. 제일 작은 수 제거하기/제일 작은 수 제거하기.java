class Solution {
    public int[] solution(int[] arr) {
        if(arr.length>1){
            //배열에서 최솟값 구하기
            int min = arr[0]; 
            for(int i = 1 ; i < arr.length; i++){
                if(arr[i]<min){
                    min = arr[i];
                }
            }
            int[] answer = new int[arr.length-1];
            int index = 0;
            for(int j = 0; j < arr.length; j++){
                if(arr[j]!=min){
                    answer[index++] = arr[j];
                }
            }
            return answer;
                
                
        } else {
            return new int[] {-1};
        }  
    }
}