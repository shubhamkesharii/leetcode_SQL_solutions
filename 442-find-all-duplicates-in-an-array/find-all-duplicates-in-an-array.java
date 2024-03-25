class Solution {
    public List<Integer> findDuplicates(int[] nums) {
    List<Integer> result = new ArrayList<>();
    
    for (int i = 0; i < nums.length; i++) {
        int index = Math.abs(nums[i]) - 1;
        if (nums[index] < 0) {
            // If the value at index is negative, it means we've seen this element before.
            result.add(index + 1);
        } else {
            // Mark the element as visited by negating its value.
            nums[index] = -nums[index];
        }
    }
    
    return result;
}
 
    }
