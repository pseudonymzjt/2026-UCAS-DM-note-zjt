#!/usr/bin/env python3
import os
os.chdir('e:/freshman/spring_term/Discrete_Mathematics')

with open('note.tex', 'r', encoding='utf-8') as f:
    content = f.read()

# Check for remaining [\![ patterns
import re
matches = list(re.finditer(r'\[\\!\\\[', content))
print(f'Found {len(matches)} remaining [\\!\\[ patterns')

for m in matches:
    start = max(0, m.start()-30)
    end = min(len(content), m.end()+50)
    print(f'  ...{repr(content[start:end])}...')

# Check for ]\!] patterns  
matches2 = list(re.finditer(r'\]\\!\\\]', content))
print(f'\nFound {len(matches2)} remaining ]\\!\\] patterns')
for m in matches2:
    start = max(0, m.start()-50)
    end = min(len(content), m.end()+30)
    print(f'  ...{repr(content[start:end])}...')
