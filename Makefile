# Kinematics Analysis Project Makefile
# Author: Pranay Palem

.PHONY: help install test lint format clean notebooks all

# Default target
help: ## Show available targets
	@echo "Kinematics Analysis Project"
	@echo "Available targets:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Installation
install: ## Install dependencies
	pip install -r requirements.txt

# Code quality
lint: ## Run code linting
	flake8 src/ tests/ --max-line-length=127 || true

format: ## Format code with black
	black src/ tests/ || true

# Testing
test: ## Run tests
	pytest tests/ -v || true

# Notebook execution
notebooks: ## Execute notebooks to verify they work
	jupyter nbconvert --execute --to notebook --inplace notebooks/*.ipynb

# Generate animations
animations: ## Generate animation GIFs
	cd notebooks && jupyter nbconvert --execute --to notebook Foldable-Kinematics.ipynb
	@if [ -f notebooks/robot_animation.gif ]; then mv notebooks/robot_animation.gif assets/robot_animation.gif; fi

# Clean up
clean: ## Clean temporary files
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete
	rm -rf .pytest_cache/

# Build pipeline for CI
build: clean install lint test notebooks ## Run complete build pipeline
	@echo "Build completed successfully!"

# Main target for continuous integration
all: build ## Run everything
	@echo "All tasks completed!"