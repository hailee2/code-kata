class Solution {
    public int solution(int[] numbers) {
        int answer= 0;
            for (int i = 0; i <= 9; i++) {
            boolean found = false;

            // numbers 배열에 i가 있는지 확인
            for (int num : numbers) {
                if (num == i) {
                    found = true;
                    break;
                }
            }

            // i가 없으면 더함
            if (!found) {
                answer += i;
            }
        }

        return answer;
    }
}