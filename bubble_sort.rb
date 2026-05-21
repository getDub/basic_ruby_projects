def bubble_sort(arr)
    times = arr.min
(0..(arr.length-1)).each.cycle(arr.length) do |num|
    tester = arr[num] <=> arr[num + 1]
    if tester == 1
        temp = arr[num]
        arr[num] = arr[num + 1]
        arr[num + 1] = temp
    end
end
   p arr
end

array = [4,3,78,2,0,2]
array2 = [78, 5,45, 55, 1, 3, 10]
array3 = [17, 3, 6, 9, 15, 8, 6, 1, 0]
bubble_sort(array)
bubble_sort(array2)
bubble_sort(array3)