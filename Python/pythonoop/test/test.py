class Test(object):
  def __init__(self, phrase='Nothing was passed'):     # set the default value for 'phrase' parameter
    self.phrase = phrase
test1 = Test('Hello, World!')
test2 = Test()
print "Test 1 has phrase: '" + test1.phrase + "'"
print "Test 2 has phrase, '" + test2.phrase + "'"
