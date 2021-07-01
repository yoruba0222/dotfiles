#!/Users/fidio/.pyenv/shims/python
import requests
import json
import sys
import os
from typing import Final

base_path = os.path.dirname(os.path.abspath(__file__))
LANGUAGE_DATA_PATH : Final[str] = os.path.normpath(os.path.join(base_path, 'Term_Translation_Assets/Term_Translation_data.json'))

def main():

    #print(os.getcwd())

    if len(sys.argv) < 2:
        sys.exit("[ERROR]:argment is not found")

    with open(LANGUAGE_DATA_PATH, mode='rt', encoding='utf-8') as file:
        data = json.load(file)

        text = sys.argv[1]
        source = data['status']['source']
        target = data['status']['target']

    if sys.argv[1] == 'status':
        slang = [k for k, v in data['languages'].items() if v == source][0]
        tlang = [k for k, v in data['languages'].items() if v == target][0]
        print('Term_Translation\n'+'source:'+slang+'\ntarget:'+tlang)
        
        pass

    elif sys.argv[1] == 'swap':
        tmp = source
        source = target
        target = tmp

        reinsert(data, source, target)

        pass

    elif sys.argv[1] == 'set':

        if sys.argv[2] == '-s':
            source = data['languages'][sys.argv[3]]

        elif sys.argv[2] == '-t':
            target = data['languages'][sys.argv[3]]

        else:
            source = data['languages'][sys.argv[2]]
            target = data['languages'][sys.argv[3]]

        reinsert(data, source, target)

        pass

    else:
        res = requests.get('https://script.google.com/macros/s/AKfycbwNkQeRuKNDhQZTsYiGK5JIgQSbNOVMMUaekGWbx2NwVxzGFVCUtEdsCG33FU_qKc1B/exec?text='+text+'&source='+source+'&target='+target)

        print(res.text)

        pass

def reinsert(data, source, target):
    data['status']['source'] = source
    data['status']['target'] = target

    with open(LANGUAGE_DATA_PATH, 'w') as f:
        json.dump(data, f, indent=4)

if __name__ == '__main__':
    main()
