# Define the source file and output directories
JAZZ_FILE = kem.jazz
EXTRACTED_DIR = extracted
COMPILED_DIR = compiled
EXTRACTED_FILE = $(EXTRACTED_DIR)/xwing_extracted_avx2.ec
COMPILED_FILE = $(COMPILED_DIR)/kem.s

# Default target
all: extract compile

# Target to extract
extract: $(EXTRACTED_FILE)

$(EXTRACTED_FILE): $(JAZZ_FILE)
	@mkdir -p $(EXTRACTED_DIR)
	jasminc -ec jade_kem_xwing_amd64_avx2_keypair_derand \
	        -ec jade_kem_xwing_amd64_avx2_enc_derand \
	        -ec jade_kem_xwing_amd64_avx2_dec \
	        -oec $(EXTRACTED_FILE) $(JAZZ_FILE)

# Target to compile
compile: $(COMPILED_FILE)

$(COMPILED_FILE): $(JAZZ_FILE)
	@mkdir -p $(COMPILED_DIR)
	jasminc $(JAZZ_FILE) -o $(COMPILED_FILE)

# Clean up generated files
clean:
	rm -rf $(EXTRACTED_DIR) $(COMPILED_DIR)
