import json
from urllib.request import urlopen

with urlopen("https://maps2.dcgis.dc.gov/dcgis/rest/services/FEEDS/MPD/MapServer/2/query?where=1%3D1&outFields=*&outSR=4326&f=json") as response:
    source = response.read()

data = json.loads(source)
# print(data)
# print(json.dumps(data, indent=2))

mydata= json.dumps(data, indent=3)
print(type(data))
print(len(data["fields"]))
