NAME = ImageLoader
WORKSPACE = $(NAME).xcworkspace

clean:
	xcodebuild \
		-workspace $(WORKSPACE) \
		-scheme $(NAME) \
		clean

test:
	xcodebuild \
		-workspace $(WORKSPACE) \
		-scheme $(NAME) \
		-sdk iphonesimulator \
		-configuration Debug \
		GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
		GCC_GENERATE_TEST_COVERAGE_FILES=YES

send-coverage:
	coveralls \
		-e ImageLoaderSwift/Tests