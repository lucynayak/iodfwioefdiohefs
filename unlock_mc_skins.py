import os, re, json

base = r'c:\Users\triggertrash\Desktop\horrible\Minecraft PE 1.1.5_src\assets\resource_packs\skins\skinpacks'

total_patched = 0
for root, dirs, files in os.walk(base):
    for f in files:
        if f == 'skins.json':
            path = os.path.join(root, f)
            with open(path, 'r', encoding='utf-8') as fh:
                content = fh.read()
            
            count = len(re.findall(r'"type"\s*:\s*"paid"', content))
            if count > 0:
                new_content = re.sub(r'"type"\s*:\s*"paid"', '"type": "free"', content)
                with open(path, 'w', encoding='utf-8') as fh:
                    fh.write(new_content)
                folder = os.path.basename(root)
                print(f'{folder}: {count} paid -> free')
                total_patched += count
            else:
                folder = os.path.basename(root)
                free_count = len(re.findall(r'"type"\s*:\s*"free"', content))
                print(f'{folder}: already {free_count} free')

print(f'\nTotal patched: {total_patched}')
