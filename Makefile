PROGRAM=gpg-actions

install:
ifneq ($(wildcard $(HOME)/.local/bin),)
	cp $(PROGRAM) "$(HOME)/.local/bin"
else ifneq ($(wildcard $(HOME)/bin),)
	cp $(PROGRAM) "$(HOME)/bin"
else
	cp $(PROGRAM) "/usr/local/bin"
endif
	cp gpg-actions-menu.desktop "$(HOME)/.local/share/file-manager/actions"
	cp gpg-actions-refresh.desktop "$(HOME)/.local/share/file-manager/actions"

remove:
	rm -rf "$(HOME)/.local/bin/$(PROGRAM)" "$(HOME)/bin/$(PROGRAM)" "/usr/local/bin/$(PROGRAM)"
	rm -rf "$(HOME)/.local/share/file-manager/actions/gpg-actions-menu.desktop"
	rm -rf "$(HOME)/.local/share/file-manager/actions/gpg-actions-refresh.desktop"
