import re

pattern = r'<a href="(?P<link>.*?)".*?>(?P<text>.*?)</a>'

cleanr = r'<.*?>'

line_count = int(input())

while line_count > 0:
    line = input()    
    for m in re.finditer(pattern, line):
        try:
            cleantext = re.sub(cleanr, '', m.group('text'))
        except:
            cleantext = ''

        print(
            (m.group('link')).strip(),
            cleantext.strip(),
            sep=','
        )
    line_count -= 1
