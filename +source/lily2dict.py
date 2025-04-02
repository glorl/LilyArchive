import re

text = open('+lilypond/Mozart_MissaSolemnisC/MissaSolemnisC_zwei.ly')
piecenames = re.findall('(.*)[ ]=', text.read())
for piecename in piecenames:
    print(piecename.strip())
text.close()

text = open('+lilypond/Mozart_MissaSolemnisC/MissaSolemnisC_zwei.ly')
# pieces = re.findall(r'(\\new Voice.*\{)', text.read())
ends = re.findall(r'\}', text.read())
# print('pieces:',pieces)
print('ends:',ends)
text.close()
