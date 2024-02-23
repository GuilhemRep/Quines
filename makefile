all:
	ocamlc -c minimal.ml
	ocamlc -o minimal minimal.cmo
	ocamlc -c base.ml
	ocamlc -o base base.cmo
	ocamlc -c stats.ml
	ocamlc -o stats stats.cmo

clean:
	rm -rf quine test sha concat *.cmi *.cmo *~
