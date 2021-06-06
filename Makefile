USER_DATA_DIR=$(HOME)/Library/Developer/Xcode/UserData
TEMPLATES_DIR=$(HOME)/Library/Developer/Xcode/Templates/File\ Templates/OCC
THEMES_DIR=$(HOME)/Library/Developer/Xcode/UserData/FontAndColorThemes/
BREAKPOINTS_DIR=$(HOME)/Library/Developer/Xcode/UserData/xcdebugger/

install:
	@echo Installing themes
	@mkdir -p $(THEMES_DIR)
	@cp ./themes/Neon.xccolortheme $(THEMES_DIR)
	@cp ./themes/Neon+.xccolortheme $(THEMES_DIR)

	@echo Installing breakpoints
	@mkdir -p $(BREAKPOINTS_DIR)
	@cp ./breakpoints/Breakpoints_v2.xcbkptlist $(BREAKPOINTS_DIR)

	@echo Installing default header
	@cp ./header/IDETemplateMacros.plist $(USER_DATA_DIR)

	@echo Installing file templates
	@mkdir -p $(TEMPLATES_DIR)
	@cp -R ./file_templates/* $(TEMPLATES_DIR)

	@echo Configuring Xcode
	@-defaults delete com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes &> /dev/null ||:
	@-defaults write com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes -array-add "ViewModel" "View" "Tests"
	@-defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool true

	@echo Done
backup:
	@echo Copying themes
	@cp $(THEMES_DIR)/Neon.xccolortheme themes/
	@cp $(THEMES_DIR)/Neon+.xccolortheme themes/

	@echo Copying breakpoints
	@cp  $(BREAKPOINTS_DIR)/Breakpoints_v2.xcbkptlist breakpoints/

	@echo Copying default header
	@cp $(USER_DATA_DIR)/IDETemplateMacros.plist header/

	@echo Copying file templates
	@cp -R $(TEMPLATES_DIR)/ file_templates/

	@echo Done