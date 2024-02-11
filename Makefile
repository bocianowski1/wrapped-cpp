f = main

run:
	@echo "Running in Docker\n"
	@docker build -t cpp .
	@docker run -it --rm cpp

local:
	@echo "Compiling..."
	@g++ -std=c++20 -o bin/$(f) $(f).cpp

	@echo "Running code\n"
	@./bin/$(f)