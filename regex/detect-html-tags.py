import re

pattern = r'<\s*(?P<tag>\w+)[^>]*>'
array = []

input_count = int(input())

while input_count > 0:
    line = input()
    for m in re.finditer(pattern, line):
        array.append((m.group('tag').strip()))
    input_count -= 1

print(';'.join([str(x) for x in sorted(list(set(array)))]))
