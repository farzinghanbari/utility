import os


files = os.listdir(".")
for f in files:
	new = f.replace(" [www.irLanguage.com]", " ")
	os.rename(f, new)
