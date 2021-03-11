CXX       = g++
CPP_FILE  = $(wildcard *.cpp)
H_FILES   = $(wildcard *.h)
CXXFLAGS  = -g -Wall -Werror -pedantic-errors -fmessage-length=0
TARGET    = $(patsubst %.cpp,%,$(CPP_FILE))

all: $(TARGET) 
$(TARGET): $(CPP_FILE) $(H_FILES)
	$(CXX) $(CXXFLAGS) $(CPP_FILE) -o $(TARGET)
clean:
	rm -f $(TARGET) $(TARGET).exe
