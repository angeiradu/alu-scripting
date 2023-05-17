#!/usr/bin/env ruby
#import re

text_to_search =
School is best
School
School is School

pattern = re.compiler(r'School\.')

matches = pattern.finditer(text_to_search)

for match in matches:
    print(match)
