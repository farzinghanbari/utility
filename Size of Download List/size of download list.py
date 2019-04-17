# import requests
# from pprint import pprint
#
#
# fh = open("S01.txt", 'r')
# sum = 0
# for link in fh:
# 	r = requests.head(link)
# 	print(r.headers)
# 	# sum += float()
# print(sum)


import urllib


fh = open("a.txt", 'r')
sum = 0
for link in fh:
	print(link.strip())
	site = urllib.request.urlopen(link.strip())
	meta = site.info()
	sum += int(meta['Content-Length'])

print(sum)

# link = "http://dl4.dlsdm.net/Serial/Friends/S01/Friends_S01E01_720p_x265_(DibaMovie).mkv?20190413135544"
# site = urllib.request.urlopen(link)
# meta = site.info()
# print("size:", int(meta['Content-Length']))
