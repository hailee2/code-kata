class Solution {
    public int solution(int n) {
    
        StringBuilder sb = new StringBuilder();

        while (n > 0) {
        sb.append(n % 3); // 나머지를 붙이기
        n /= 3;           // 3으로 나누기
        }
        return Integer.parseInt(sb.toString(),3);
    }
}