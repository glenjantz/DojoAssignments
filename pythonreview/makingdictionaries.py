# Create a function that takes in two lists and creates a single dictionary where the first list contains keys and the second values.
#  Assume the lists will be of equal length.
# Your first function will take in two lists containing some strings. Here are two example lists:
name = ["Anna", "Eli", "Pariece", "Brendan", "Amy", "Shane", "Oscar"]
favorite_animal = ["horse", "cat", "spider", "giraffe", "ticks", "dolphins", "llamas"]


def make_dict(arr1, arr2):
    if len(arr1) > len(arr2):
        newarr = zip(arr1,arr2)
        newdict = dict(newarr)
        return newdict
    elif len(arr1) < len(arr2):
        newwarr = zip(arr2,arr1)
        newwdict = dict(newwarr)
        return newwdict
    else:
        new_arr = zip(arr1,arr2)
        new_dict = dict(new_arr)
        return new_dict
print make_dict(name,favorite_animal)
