PROJECT = "Foundation 4 - Stylus fork"

build : ;
	@echo "Building vanilla ZURB Foundation"; \
	compass create -r zurb-foundation --using foundation target; \
	echo "Building Stylus fork"; \
	node_modules/stylus/bin/stylus -I node_modules/stylus-type-utils/lib stylus/foundation.styl -o target/stylesheets -l;
