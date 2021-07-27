n = int(raw_input())
student_marks = {}
for _ in range(n):
    line = raw_input().split()
    name, scores = line[0], line[1:]
    scores = map(float, scores)
    student_marks[name] = scores
query_name = raw_input()
query_score = student_marks[query_name]
result = sum(query_score)/len(query_score)
print "%.2f" % result
