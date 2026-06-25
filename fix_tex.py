#!/usr/bin/env python3
import os
os.chdir('e:/freshman/spring_term/Discrete_Mathematics')

with open('note.tex', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the truth table - add \small
old = '\\begin{table}[htbp]\n\\centering\n\\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}\n\\hline\n$\\varphi_1$ & $\\varphi_2$ & $\\neg\\varphi_1$ & $\\neg\\varphi_2$ & $\\varphi_1 \\land \\varphi_2$ & $\\varphi_1 \\lor \\varphi_2$ & $\\neg(\\varphi_1 \\land \\varphi_2)$ & $\\neg(\\varphi_1 \\lor \\varphi_2)$ & $\\neg\\varphi_1 \\lor \\neg\\varphi_2$ & $\\neg\\varphi_1 \\land \\neg\\varphi_2$ \\\\'

new = '\\begin{table}[htbp]\n\\centering\n\\small\n\\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}\n\\hline\n$\\varphi_1$ & $\\varphi_2$ & $\\neg\\varphi_1$ & $\\neg\\varphi_2$ & $\\varphi_1 \\land \\varphi_2$ & $\\varphi_1 \\lor \\varphi_2$ & $\\neg(\\varphi_1 \\land \\varphi_2)$ & $\\neg(\\varphi_1 \\lor \\varphi_2)$ & $\\neg\\varphi_1 \\lor \\neg\\varphi_2$ & $\\neg\\varphi_1 \\land \\neg\\varphi_2$ \\\\'

if old in content:
    content = content.replace(old, new)
    print('Fixed truth table - added \\small')
else:
    print('Pattern not found for truth table')

# Fix line 4729 (0-indexed: 4728) - check what's there
lines = content.split('\n')
print(f'\nLine 4729: {lines[4728][:200]}')

with open('note.tex', 'w', encoding='utf-8') as f:
    f.write(content)
print('Done')
