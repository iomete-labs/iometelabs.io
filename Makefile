
SRC := index.scrbl
SASS_SRC := index.sass

PUBLISH := publish

HTML := ${PUBLISH}/index.html
CSS := ${PUBLISH}/index.css

RACKET := racket
SASS := sass

all: ${HTML} ${CSS}

${HTML}: ${SRC}
	@${RACKET} ${SRC} >${HTML} || sh -c 'rm ${HTML} && exit 1'

${CSS}: ${SASS_SRC}
	@${SASS} ${SASS_SRC} >${CSS} || sh -c 'rm ${CSS} && exit 1'

clean:
	@find ${PUBLISH} \
		-mindepth 1 \( \
		-name '*.html' \
		-o -name '*.css' \
		-o -type d \) \
		-delete
