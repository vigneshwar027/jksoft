import fitz
pdf = 'inv.pdf'
file = fitz.open(pdf)

for pageNumber, page in enumerate(file.pages(),start=1):
    text = page.getText()
    txt = open(f'report_page_{pageNumber}.xls','a')
    txt.writelines(text)
    txt.close()

# # for page in doc:
# #     text = page.getText('text')
# #     print(text)

# f = open('excel.txt','w')
# f.write(text)
# f.close()
