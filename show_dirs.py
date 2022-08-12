from pathlib import Path

roots = [
    'sandbox',
    'stock',
    'Factory',
]

for root in roots:
    for path in (Path('/workspace') / root).glob('*'):
        print(path)