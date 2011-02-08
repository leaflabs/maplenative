#!/usr/bin/env python

# Fix pin numbering in schematic (.sch) files.  Requires python 2.6 or
# higher.  For usage:
#
# ./fix_nums.py --help

from __future__ import print_function

import optparse
import re

def main(start_num, end_num, action, schematics):
    print('start: {0}. end: {1}. action: {2}. schematics: {3}'.format(
        start_num, end_num, action, ', '.join(schematics)))
    for sch in schematics:
        fixed = act_on_sch(start_num, end_num, action, sch)
        with open(sch, 'w') as sch_out: sch_out.write(''.join(fixed))

def act_on_sch(start_num, end_num, action, sch):
    fixed_lines = []
    with open(sch, 'r') as sch_in:
        maybe_act_on_next = False
        for line in sch_in:
            if maybe_act_on_next and act_on_line_p(line, start_num, end_num):
                fixed_lines.append(act_on_line(line, action))
            else:
                fixed_lines.append(line)

            if consider_next_line_p(line): maybe_act_on_next = True
            else: maybe_act_on_next = False
    return fixed_lines

def consider_next_line_p(line):
    return line.startswith('Text GLabel')

def act_on_line_p(line, start_num, end_num):
    num = None
    if re.match('\d+$', line): num = int(line)
    elif re.match('\d+/', line): num = int(line.split('/')[0])

    return num is not None and (start_num <= num and
                                (end_num is None or num <= end_num))

def act_on_line(line, action):
    line = line.strip()
    if '/' in line: num, rest = line.split('/')
    else: num, rest = line, ''

    num = int(num)
    acted_upon = str({'INC': num + 1, 'DEC': num - 1}[action])

    return '/'.join(filter(None, [acted_upon, rest])) + '\n'

if __name__ == '__main__':
    parser = optparse.OptionParser(usage=('usage: %prog [options] '
                                          'sch1 [sch2...]'))
    parser.add_option('-s', '--start-number', default=0,
                      help='Number to start acting on (default 0)')
    parser.add_option('-e', '--end-number', default=None,
                      help='Number to stop acting on (default infinity)')
    parser.add_option('-a', '--action', default='i',
                      help=('Action to take on numbers (i=increment, '
                            'd=decrement, default=increment)'))
    opts, schematic_files = parser.parse_args()

    def usage(msg, fatal=True):
        if fatal: print ('Error: ', end='')
        print(msg)
        parser.print_help()
        if fatal: sys.exit(1)

    if len(schematic_files) == 0: usage('No schematic files given')
    if opts.action not in ['i', 'd']: usage('Action must be "i" or "d"')

    try: start_num = int(opts.start_number)
    except: usage('Start number must be an integer')

    if opts.end_number is None:
        end_num = None
    else:
        try: end_num = int(opts.end_number)
        except: usage('If specified, end number must be an integer')

    action = {'i': 'INC', 'd': 'DEC'}[opts.action]

    main(start_num, end_num, action, schematic_files)
