import re

lines = []
total_matches = 0

sentence_count = int(input())
while sentence_count > 0:
    lines.append(input())
    sentence_count -= 1

query_count = int(input())
while query_count > 0:
    query = input()
    total_matches = 0
    pattern = rf'\b(?P<word>[a-zA-Z0-9_]+{query}[a-zA-Z0-9_]+)\b'
    for line in lines:
        matches = re.findall(pattern, line)
        total_matches += len(matches)
    print(total_matches)
    query_count -= 1

