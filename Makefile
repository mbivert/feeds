.PHONY: help
help:
	@echo "install   : install   feeds"
	@echo "uninstall : uninstall feeds"
	@echo "update-doc: update README.md from inline documentation"

.PHONY: install
install: ./feeds
	@echo Installing feeds...
	@install -o root -g root -m 755 ./feeds   /bin/feeds

.PHONY: uninstall
uninstall:
	@echo Removing feeds...
	@rm -f /bin/feeds

.PHONY: update-doc
update-doc:
	@echo Updating documentation...
	@cp README.md /tmp/README.backup.$$
	@sed '/^# Documentation/q' ./README.md > /tmp/README.$$
	@(echo; sh ./feeds -h | sed 's/^/    /g') >> /tmp/README.$$
	@mv /tmp/README.$$ ./README.md
