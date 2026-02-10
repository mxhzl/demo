all: deploy-dry

serve:
	zola serve --drafts --open

build:
	zola build

dependencies:
	mise install

deploy-dry: dependencies build
	rsync --del -n -r -v public/ ${USER}@${HOST}:/var/www/demo

deploy: dependencies build
	rsync --del -r public/ ${USER}@${HOST}:/var/www/demo

.PHONY: clean
clean:
	rm -r public
