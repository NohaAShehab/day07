class Person:
    pass


p =Person()
first_key = "first"
first_val = "Noha"
# p.first_key=first_val
#
# print(p.first)
# # p.__setattr__(first_key,first_val)
setattr(p,first_key,first_val)
# print(p.first)

# # get attr
# print(getattr(p,"first"))


myinfo = {"name":"Noha", "track":"os"}

for key,value in myinfo.items():
    setattr(p,key,value)

for key in myinfo:
    print(getattr(p,key))