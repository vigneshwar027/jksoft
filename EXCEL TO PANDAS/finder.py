import os

file_name = []
file_path= []
location = []
for root,dirs,files in os.walk(r'D:\RESUMES'):    

    for filename in files:
        if(filename.__contains__('Vig')):
            file_name.append(filename)   
            print(file_name)                        
            path = ((os.path.abspath(filename)))            
            location.append(path)

print(file_name)
print(location)


# for i in file_name:
#     print(i)

# for i in path:
#     print(i)

