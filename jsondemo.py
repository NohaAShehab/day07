# Json
'''
JSON (JavaScript Object Notation) is a lightweight data-interchange format.
It is easy for humans to read and write.
It is easy for machines to parse and generate.
'''
# now it is independent of the lang.

import json
# jsonfile= open("test.json")
# myobj = jsonfile.read()
# # print(myobj)
# # load json object into python from a string
# data = json.loads(myobj)  # read it into dictionary
# # print(type(data))
# # print(data)
# # print(type(data["users"]))
# #
# # for person in data["users"]:
# #     print(person)
# #
# #
# # newstring= json.dumps(data,indent=2)
# newstring= json.dumps(data,indent=2, sort_keys=True)
#
# print(newstring)

with open("test.json") as f:
    print(f)
    data = json.load(f)
    print(data)
    for item in data["users"]:
        del item["areacode"]

    print(json.dumps(data,indent=2))

with open("newfile.json","w") as wf:
    json.dump(data,wf, indent=2)

