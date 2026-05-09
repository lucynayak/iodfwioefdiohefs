import os, re

bases = [
    r'.\assets\resource_packs\skins\skinpacks',
    r'.\Minecraft PE 1.1.5_src\assets\resource_packs\skins\skinpacks',
]

total = 0
for base in bases:
    print(f'\n=== {base} ===')
    for root, dirs, files in os.walk(base):
        for f in files:
            if f.endswith('.json'):
                path = os.path.join(root, f)
                content = open(path, 'r', encoding='utf-8', errors='ignore').read()
                count = len(re.findall(r'"type"\s*:\s*"paid"', content))
                if count > 0:
                    new = re.sub(r'"type"\s*:\s*"paid"', '"type": "free"', content)
                    open(path, 'w', encoding='utf-8').write(new)
                    print(f'  PATCHED {os.path.relpath(path)}: {count} paid->free')
                    total += count

print(f'\nTotal JSON patches: {total}')
