

# Define the compiler
CC = gcc

# Define the source files
BISON_SRC = syntax.y         # Your Bison file
FLEX_SRC = tokenizer.l       # Your Flex file

# Define the generated files
BISON_OUTPUT = syntax.tab.c
FLEX_OUTPUT = lex.yy.c

# Define the output executable
TARGET = isExpression

# Build the targets
all: $(TARGET)

# Define how to create the target executable
$(TARGET): $(BISON_OUTPUT) $(FLEX_OUTPUT)
	$(CC) -o  $(TARGET) $(BISON_OUTPUT)

# Define how to generate the lexer code
$(FLEX_OUTPUT): $(FLEX_SRC)
	flex $(FLEX_SRC)

# Define how to generate the parser code
$(BISON_OUTPUT): $(BISON_SRC)
	bison -d $(BISON_SRC)

# Clean up the generated files
clean:
	rm -f $(TARGET) $(BISON_OUTPUT) $(FLEX_OUTPUT) syntax.tab.h
