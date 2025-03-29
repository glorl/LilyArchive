import re

text = open('../+lilypond/Mozart_MissaSolemnisC/MissaSolemnisC_zwei.ly')
piecenames = re.findall('(.*)[ ]=', text.read())
for piecename in piecenames:
    print(piecename.strip())
pieces = re.findall('new', text.read())
print(pieces)
