all:
	ocamlc -c quine.ml
	ocamlc -c test.ml
	ocamlc -c concat.ml
	ocamlc -c sha.ml
	ocamlc -o quine quine.cmo
	ocamlc -o sha sha.cmo
	ocamlc -o concat concat.cmo
	ocamlc -o test test.cmo

clean:
	rm -rf quine test sha concat *.cmi *.cmo *~
