.PHONY: test

# This target tests if the oneliner script functions as expected

test:
	@mkdir -p test
	@rm -rf test/*
	@cd test && touch "a bad file" "a very simple file" "a sample file example" "a nice file"
	./oneliner test
	@cd test && if [ -f "a good file" -a -f "a very file" -a -f "a file example" -a -f "a nice file" ] ; then echo "Sucess!" ; return 0 ; else echo "Failed!" ; return 1 ; fi
