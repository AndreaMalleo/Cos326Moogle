all: moogle

# These must be in the right order--no forward refs
FILES = order.ml dict.ml myset.ml graph.ml nodescore.ml util.ml \
	query.ml pagerank.ml crawl.ml moogle.ml 

moogle: $(FILES)
	ocamlbuild -libs unix,str moogle.d.byte

clean: 
	ocamlbuild -clean 
