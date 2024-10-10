# Base Makefile to call the Makefiles in subdirectories

# Directory paths
REF_DIR = xwing/ref
AVX2_DIR = xwing/avx2

# Default target is to build both ref and avx2
all: ref avx2

# Target to call the ref Makefile (both extract and compile)
ref: ref-extract ref-compile

# Target to call the avx2 Makefile (both extract and compile)
avx2: avx2-extract avx2-compile

# Target to run the extract command in ref
ref-extract:
	$(MAKE) -C $(REF_DIR) extract

# Target to run the compile command in ref
ref-compile:
	$(MAKE) -C $(REF_DIR) compile

# Target to run the extract command in avx2
avx2-extract:
	$(MAKE) -C $(AVX2_DIR) extract

# Target to run the compile command in avx2
avx2-compile:
	$(MAKE) -C $(AVX2_DIR) compile

# Clean both ref and avx2 builds
clean: ref-clean avx2-clean

# Clean ref build
ref-clean:
	$(MAKE) -C $(REF_DIR) clean

# Clean avx2 build
avx2-clean:
	$(MAKE) -C $(AVX2_DIR) clean
