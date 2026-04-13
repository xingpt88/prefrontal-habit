.PHONY: install verify clean

# Default target: install skill to Hermes
install:
	@echo "Installing prefrontal-habit skill..."
	@mkdir -p ~/.hermes/skills/productivity
	@cp -r prefrontal-habit ~/.hermes/skills/productivity/
	@echo "✅ Skill installed to ~/.hermes/skills/productivity/prefrontal-habit"
	@$(MAKE) verify

# Verify installation
verify:
	@echo ""
	@echo "Verifying installation..."
	@if [ -f ~/.hermes/skills/productivity/prefrontal-habit/SKILL.md ]; then \
		echo "✅ SKILL.md found"; \
	else \
		echo "❌ SKILL.md not found"; \
		exit 1; \
	fi
	@echo "✅ Installation complete!"

# Create data directory
data-dir:
	@mkdir -p ~/.hermes/data/prefrontal-habit
	@echo "✅ Data directory created at ~/.hermes/data/prefrontal-habit"

# Full setup: install + data dir
setup: install data-dir

# Remove skill
uninstall:
	@rm -rf ~/.hermes/skills/productivity/prefrontal-habit
	@echo "✅ Skill removed"

# Clean data (careful!)
clean-data:
	@rm -rf ~/.hermes/data/prefrontal-habit
	@echo "✅ Data directory removed"

# Show status
status:
	@echo "=== Skill Status ==="
	@if [ -f ~/.hermes/skills/productivity/prefrontal-habit/SKILL.md ]; then \
		echo "✅ Skill: installed"; \
	else \
		echo "❌ Skill: not installed"; \
	fi
	@echo ""
	@echo "=== Data Status ==="
	@if [ -d ~/.hermes/data/prefrontal-habit ]; then \
		echo "✅ Data dir: exists"; \
		@ls ~/.hermes/data/prefrontal-habit/; \
	else \
		echo "⚠️  Data dir: not created yet (run 'make data-dir')"; \
	fi
