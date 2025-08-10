class Solution {
    public long solution(int price, int money, int count) {
        long answer = 0;
        long tempMoney = money;
        for(int i = 1; i<=count; i++){
        tempMoney -= (long)(price*i);    
        }
        if(tempMoney < 0){
            answer = Math.abs(tempMoney);
        }else if(tempMoney>=0){
            answer = 0;
        }
        return answer;
    }
}