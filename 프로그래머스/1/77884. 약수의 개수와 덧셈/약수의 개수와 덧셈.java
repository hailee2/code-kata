class Solution {
    public int solution(int left, int right) {
        int answer = 0;
        for(int i = left; i<=right; i++){  //left~right 훑기
            int count = 0;
            for(int j = 1; j<=i; j++){  //i의 약수를 구할 분모 1부터 i까지 반복문
                if(i%j ==0){            //약수인 경우
                    count++;            //갯수 증가
                }
            }
            if(count%2==0){             //약수 i의 갯수가 짝수라면 
                answer += i;
            }else{                      //약수 i의 갯수가 홀수라면
                answer -= i;
            }             
        }
        return answer;
    }
}