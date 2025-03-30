import re

text = open('../+lilypond/Mozart_MissaSolemnisC/MissaSolemnisC_zwei.ly')
piecenames = re.findall('(.*)[ ]=', text.read())
for piecename in piecenames:
    print(piecename.strip())
text.close()

text = open('../+lilypond/Mozart_MissaSolemnisC/MissaSolemnisC_zwei.ly')
pieces = re.findall('(new Voice[^\t\n\r\f\v\b]*)', text.read())
print(pieces)
text.close()
