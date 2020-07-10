.PHONY: build clean test add-cap-files

add-cap-files:
	./choose_compartment_strategy.sh $(COMPARTMENT_STRATEGY_CHOICE)

build:
	dune build @install

test:
	dune runtest

install:
	dune install

uninstall:
	dune uninstall

doc:
	dune build @doc

clean:
	dune clean
