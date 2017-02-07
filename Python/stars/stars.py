def draw_stars(arr):
    for i in range(0,len(arr)):
        string1 = ""
        string2 = ""
        if type(arr[i]) is str:
            for count in range(0,len(arr[i])):
                string2 = string2 + arr[i][0]
            print string2.lower()
        else:
            for j in range(0,arr[i]):
                string1 = string1 + "*"
            print string1
    return
draw_stars([7,"Tommmy boy",3,"hello"])
#peerprogrammed with Nikki and Jaeson
