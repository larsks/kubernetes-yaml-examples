JSONFILES = $(wildcard *.json)
YAMLFILES = $(JSONFILES:.json=.yaml)

%.yaml: %.json
	python json2yaml.py $< $@

all: $(YAMLFILES)

