data = {}

for _ in range(int(raw_input())):
    name = raw_input()
    score = float(raw_input())
    data[name] = score

sorted_values = sorted(list(set(data.values())))
second_score = sorted_values[1]

second_names = []
for key,value in data.items():
    if value == second_score:
        second_names.append(key)

second_names.sort()
for name in second_names:
    print name
