'''Code to remove tag from file and concatenate 
different part of plasmid into a single string'''

import re

def read_file(file_name = ""):
	"Return the file content as a single string"

	with open(file_name, "r") as myfile:
		data=myfile.read().replace('\n', '')

	return data 

def remove_tag(gene_string):
	"Remove the tag from the single string"

	gene_string = re.sub('<[^>]*>', '', gene_string)

	return gene_string 

def save_file(gene_string, name_of_file = ""):
	"Save the string with tags removed as a file"

	f = open(name_of_file, "w") 
	f.write(gene_string)

data = read_file("tnaa_tnab_no_restr")
data_tag_removed = remove_tag(data)
save_file(data_tag_removed, "tnaa_tnab_no_restr_no_tag")