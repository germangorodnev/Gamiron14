import sys 

f = open(sys.argv[1])
params = tuple(int(coordinate) for coordinate in f.readline().split())
print(params)
ls = []
for line in f:
	for s in line.split():
		ls.append(s)
	#for s in line.split():
		#ls.append(tuple(int(s)))
pairs = [[int(a), int(b)] for a, b in zip(ls[0::2], ls[1::2])]
print(pairs)

for pair in pairs:
	pair[0] -= params[0];
	pair[1] -= params[1];

print(pairs);

# generate code
outcome = "";
for pair in pairs:
	outcome += "physics_fixture_add_point(fix, " + str(pair[0]) + " - xoff, " + str(pair[1]) + " - yoff);\n";


o = open(sys.argv[2], 'w');
o.write(outcome);
o.close();

f.close();