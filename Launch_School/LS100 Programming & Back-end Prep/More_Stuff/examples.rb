#  16.  Take the following array and turn it into a new array that consists
# => of strings containing one word.

a = ['white snow', 'winter wonderland', 'melting ice', 'slipper sidewalk', 'salted roads', 'white trees']

b1, c1, d1, e1, f1, g1 = a.each_slice(1).to_a

p b1
p c1
p d1
p e1
p f1
p g1
