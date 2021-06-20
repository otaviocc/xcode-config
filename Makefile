USER_DATA_DIR=$(HOME)/Library/Developer/Xcode/UserData
TEMPLATES_DIR=$(HOME)/Library/Developer/Xcode/Templates/File\ Templates/OCC
THEMES_DIR=$(HOME)/Library/Developer/Xcode/UserData/FontAndColorThemes
BREAKPOINTS_DIR=$(HOME)/Library/Developer/Xcode/UserData/xcdebugger
SNIPPETS_DIR=$(HOME)/Library/Developer/Xcode/UserData/CodeSnippets
KEYBINDINGS_DIR=$(HOME)/Library/Developer/Xcode/UserData/KeyBindings

install:
	@echo Installing themes
	@mkdir -p $(THEMES_DIR)
	@cp ./themes/Neon.xccolortheme $(THEMES_DIR)
	@cp ./themes/Neon+.xccolortheme $(THEMES_DIR)
	@cp ./themes/Default+.xccolortheme $(THEMES_DIR)

	@echo Installing breakpoints
	@mkdir -p $(BREAKPOINTS_DIR)
	@cp ./breakpoints/Breakpoints_v2.xcbkptlist $(BREAKPOINTS_DIR)

	@echo Installing default header
	@cp ./header/IDETemplateMacros.plist $(USER_DATA_DIR)

	@echo Installing file templates
	@mkdir -p $(TEMPLATES_DIR)
	@cp -R ./file_templates/* $(TEMPLATES_DIR)

	@echo Installing code snippets
	@mkdir -p $(SNIPPETS_DIR)
	@cp ./code_snippets/*.codesnippet $(SNIPPETS_DIR)

	@echo Installing key bindings
	@mkdir -p $(KEYBINDINGS_DIR)
	@cp ./key_bindings/*.idekeybindings $(KEYBINDINGS_DIR)

	@echo Configuring Xcode
	@-defaults delete com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes &> /dev/null ||:
	@-defaults write com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes -array-add "ViewModel" "View" "Tests"

	@-defaults write com.apple.dt.Xcode AutomaticallyCheckSpellingWhileTyping -bool true
	@-defaults write com.apple.dt.Xcode DVTTextEditorTrimTrailingWhitespace -bool true
	@-defaults write com.apple.dt.Xcode DVTTextEditorTrimWhitespaceOnlyLines -bool true
	@-defaults write com.apple.dt.Xcode DVTTextShowLineNumbers -bool true
	@-defaults write com.apple.dt.Xcode DVTTextShowMarkSeparators -bool false
	@-defaults write com.apple.dt.Xcode IDEFileExtensionDisplayMode -int 2
	@-defaults write com.apple.dt.Xcode IDENavigatorRowSizeStyle -int 1
	@-defaults write com.apple.dt.Xcode IDESourceControlAutomaticallyAddNewFiles -bool false
	@-defaults write com.apple.dt.Xcode IDESourceControlLocalStatusCheckingEnabled -bool false
	@-defaults write com.apple.dt.Xcode IDESourceControlPreselectCommitSheetFiles -bool false
	@-defaults write com.apple.dt.Xcode IDESourceControlRemoteStatusFetchingEnabled -bool false
	@-defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool true
	@-defaults write com.apple.dt.Xcode XCFontAndColorCurrentDarkTheme -string "Neon+.xccolortheme"

	@echo Done

uninstall:
	@echo Uninstalling
	@-rm $(THEMES_DIR)/Neon.xccolortheme &> /dev/null ||:
	@-rm $(THEMES_DIR)/Neon+.xccolortheme &> /dev/null ||:
	@-rm $(THEMES_DIR)/Default+.xccolortheme &> /dev/null ||:

	@echo Uninstalling file templates
	@-rm -rf $(TEMPLATES_DIR) &> /dev/null ||:

	@echo Uninstalling default header
	@-rm $(BREAKPOINTS_DIR)/Breakpoints_v2.xcbkptlist &> /dev/null ||:

	@echo Uninstalling code snippets
	@-rm $(SNIPPETS_DIR)/*.codesnippet &> /dev/null ||:

	@echo Uninstalling key bindings
	@-rm $(KEYBINDINGS_DIR)/*.idekeybindings &> /dev/null ||:

	@echo Done

backup:
	@echo Copying themes
	@cp $(THEMES_DIR)/Neon.xccolortheme themes/
	@cp $(THEMES_DIR)/Neon+.xccolortheme themes/
	@cp $(THEMES_DIR)/Default+.xccolortheme themes/

	@echo Copying breakpoints
	@cp  $(BREAKPOINTS_DIR)/Breakpoints_v2.xcbkptlist breakpoints/

	@echo Copying default header
	@cp $(USER_DATA_DIR)/IDETemplateMacros.plist header/

	@echo Copying file templates
	@cp -R $(TEMPLATES_DIR)/ file_templates/

	@echo Copying code snippets
	@cp $(SNIPPETS_DIR)/*.codesnippet code_snippets/

	@echo Copying key bindings
	@cp $(KEYBINDINGS_DIR)/*.idekeybindings key_bindings/

	@echo Done