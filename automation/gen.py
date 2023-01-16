# used to generate project name and project idea - see docs

import random as r

letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
digits = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']

project_ideas = ["operating system", "programming language", "browser", "container", "version control system", "text editor", "walking robot", "http router", "boring task automator (robot or code)"]

def generate_repo():
	# scope vars
	len = 2
	name = []
	ret = {"project":"", "name":""}
	
	# generation
	for i in range(len):
		name.append(r.choice(letters))
		name.append(r.choice(digits))

	# redefinition
	ret["name"] = str("".join(name))
	ret["project"] = str(r.choice(project_ideas))
	
	# prints out the dictionary
	print("-------------------------------------------")
	print("PROJECT: {}".format(ret["project"]))
	print("NAME:    {}".format(ret["name"]))
	print("-------------------------------------------")

generate_repo()
