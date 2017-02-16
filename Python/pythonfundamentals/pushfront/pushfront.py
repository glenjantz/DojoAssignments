def push_front(arr,x):
    arr.append(x)
    for count in range(0,len(arr)):
        arr[count], arr[len(arr)-1] = arr[len(arr)-1], arr[count]
    return arr

print push_front([2,3,4,5,6,7,8],10)
