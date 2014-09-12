#!/usr/bin/python

import os
import sys
import argparse
import yaml

def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument('input')
    p.add_argument('output', nargs='?')
    return p.parse_args()

def main():
    args = parse_args()

    with open(args.input) as fd:
        data = yaml.load(fd)

    with open(args.output, 'w') if args.output else sys.stdout as fd:
        fd.write(yaml.dump(data, default_flow_style=False))

if __name__ == '__main__':
    main()


