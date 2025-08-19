class Solution {
    public int solution(int[][] sizes) {
        int answer = 0;
        int maxWidth = 0;
        int maxHeight = 0;

        for(int i = 0; i < sizes.length; i++){
            int w = Math.max(sizes[i][0], sizes[i][1]);
            int h = Math.min(sizes[i][0], sizes[i][1]);

            if(w > maxWidth) maxWidth = w;
            if(h > maxHeight) maxHeight = h;
        }

        answer = maxWidth * maxHeight;
        return answer;
    }
}