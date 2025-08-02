class Solution {
    public String solution(String phone_number) {
        int len = phone_number.length();
         StringBuilder answer = new StringBuilder();
        //String[] answer = new String[len];
        
        for(int i =0; i<len; i++){
           if(i<len - 4){
               answer.append("*");
           }else{
               answer.append(phone_number.charAt(i));
           }
        }
        return answer.toString();
    }
}


//public String solution(String phone_number) {
//    int len = phone_number.length();
//    return "*".repeat(len - 4) + phone_number.substring(len - 4);
//}