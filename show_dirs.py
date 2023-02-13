from pathlib import Path
import argparse

roots = [
    'sandbox',
    'stock',
    'Factory',
    'rpm-workspace',
    'poscrgen_ws',
    'd827088818559',
    '1',
    '2',
    '3',
    '4',
    '5',
    'bitbucket',
    'primecodes',
]


def get_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument('-r', '--root', default=None)
    return parser.parse_args()


args = get_args()
print(args)
roots = [Path('.') / args.root] if args.root else map(
    lambda root: Path('/workspace') / root, roots)
for root in roots:
    for path in root.glob('*'):
        print(path)
