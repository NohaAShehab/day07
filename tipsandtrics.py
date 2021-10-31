# x = 1000_000_000_000_000
# y = 1000_000_000
#
# print(x+y)

#zip function
name = ["Noha", "Zenia", "Mohamed", "Rana"]
mood= ["joy","energetic","happy","well"]

# for index,user in enumerate(name):
#     mymode = mood[index]
#     print(f"{index} : {user} wiht mood {mymode}")

# for user,mymode in zip(name,mood):
#     print(f"{user} wiht mood {mymode}")

#pack them 
for value in zip(name,mood):
    print(f"{value}")