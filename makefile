Download_Install_macOS:
	@echo "Building Download_Install_macOS..."
	@$/chmod 755 CreateBuild.sh
	@$(CURDIR)/CreateBuild.sh
	@$/xcodebuild -project "Download_Install_macOS.xcodeproj" -alltargets -configuration Release
	@$/Open ./build/Release


.PHONY: Download_Install_macOS clean

