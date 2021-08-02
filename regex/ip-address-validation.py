import re

lines = []
total_matches = 0

ipv4_pattern = r'^(([0-9]|[0-9]{2}|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[0-9]{2}|1[0-9]{2}|2[0-4][0-9]|255)$'
ipv6_pattern = r'^([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}$'

line_count = int(input())
while line_count > 0:
    line = input()
    ipv4_matches = re.findall(ipv4_pattern, line)
    ipv6_matches = re.findall(ipv6_pattern, line)

    if len(ipv4_matches) > 0 and len(ipv6_matches) > 0:
        print("Both")
    elif len(ipv4_matches) > 0:
        print("IPv4")
    elif len(ipv6_matches) > 0:
        print("IPv6")
    else:
        print("Neither")
    
    line_count -= 1
