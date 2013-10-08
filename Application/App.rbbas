#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub NewDocument()
		  Carbon.TestSelf
		  CoreFoundation.TestSelf
		  Cocoa.TestSelf
		  ATSForFonts.ATSFont.SelfTest
		  CertTools.SelfTest
		  TestFileManager
		  TestBundleLookup
		  TestCocoa
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #if not TargetMacOS
		    
		    MsgBox "This project will only run in MacOS, but the classes are safe to use in any project."
		    quit
		    
		  #endif
		  
		  Cocoa.Initialize
		  
		  //Initialize the Timer which will close the Splash window and open the default window.
		  SplashTimer = new Timer
		  AddHandler  SplashTimer.Action, AddressOf HandleTimerAction
		  SplashTimer.Period = 2500
		  SplashTimer.Mode = 1
		  
		  //Read prefs
		  dim f as FolderItem
		  
		  f = SpecialFolder.Preferences.Child( "com.declaresub.macoslib.plist" )
		  if f.Exists then
		    PrefsPL = new DebugReportModule.PropertyList( f )
		    
		  else
		    PrefsPL = new DebugReportModule.PropertyList
		    PrefsPL.file = f
		    
		  end if
		  
		  dim LV as integer = PrefsPL.Lookup( "LastVersionChecked", 0 ) //Last version checked
		  if LV=0 then //Very first launching
		    
		    
		    
		  else //User has already launched the app
		    if LV<About.Version then //User is seeing a new version of macoslib
		      
		      
		      
		    end if
		  end if
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function ApplicationExtensionsMenu() As Boolean Handles ApplicationExtensionsMenu.Action
			ApplicationExtensionsWindow.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function BonjourExampleMenu() As Boolean Handles BonjourExampleMenu.Action
			BonjourPublishingExampleWindow.Show
			BonjourBrowsingExampleWindow.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaApplicationIcon() As Boolean Handles CocoaApplicationIcon.Action
			AppIconExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSAlert() As Boolean Handles CocoaNSAlert.Action
			NSAlertExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSByteCountFormatter() As Boolean Handles CocoaNSByteCountFormatter.Action
			NSByteCountFormatterExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSColorBrowser() As Boolean Handles CocoaNSColorBrowser.Action
			NSColorWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSDatePicker() As Boolean Handles CocoaNSDatePicker.Action
			NSDatePickerWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSDockTile() As Boolean Handles CocoaNSDockTile.Action
			NSDockTileExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSHost() As Boolean Handles CocoaNSHost.Action
			NSHostExampleWindow.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSLevelIndicator() As Boolean Handles CocoaNSLevelIndicator.Action
			NSLevelIndicatorWindow.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSPasteboard() As Boolean Handles CocoaNSPasteboard.Action
			NSPasteboardExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSPathControl() As Boolean Handles CocoaNSPathControl.Action
			NSPathControlWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSPopover() As Boolean Handles CocoaNSPopover.Action
			NSPopoverExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSPrinter() As Boolean Handles CocoaNSPrinter.Action
			NSPrinterExampleWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSRunningApplication() As Boolean Handles CocoaNSRunningApplication.Action
			NSRunningApplicationsExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSSearchField() As Boolean Handles CocoaNSSearchField.Action
			NSSearchFieldExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSSharingServicePicker() As Boolean Handles CocoaNSSharingServicePicker.Action
			NSSharingServiceExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSStatusItem() As Boolean Handles CocoaNSStatusItem.Action
			
			NSStatusItemWindow.show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSTableView() As Boolean Handles CocoaNSTableView.Action
			NSTableViewExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSTask() As Boolean Handles CocoaNSTask.Action
			NSTaskExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSTimeZone() As Boolean Handles CocoaNSTimeZone.Action
			NSTimeZoneWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSToolbar() As Boolean Handles CocoaNSToolbar.Action
			NSToolbarWindow.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSUserNotifications() As Boolean Handles CocoaNSUserNotifications.Action
			NSUserNotificationExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSWindow() As Boolean Handles CocoaNSWindow.Action
			NSWindowExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaNSWorkspaceNotifications() As Boolean Handles CocoaNSWorkspaceNotifications.Action
			NSWorkspaceEventsExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaSystemImages() As Boolean Handles CocoaSystemImages.Action
			SystemImages.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CocoaTextArea() As Boolean Handles CocoaTextArea.Action
			'TextAreaExample.Show
			TextAreaWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ControlsHISearchField() As Boolean Handles ControlsHISearchField.Action
			HISearchFieldExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ControlsMacDatePicker() As Boolean Handles ControlsMacDatePicker.Action
			MacDatePickerExampleWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreFoundationShowVersion() As Boolean Handles CoreFoundationShowVersion.Action
			Msgbox Str(CoreFoundation.Version)
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreFoundationStringTokenizer() As Boolean Handles CoreFoundationStringTokenizer.Action
			StringTokenizerExample.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreGraphicsAxialShadingExample() As Boolean Handles CoreGraphicsAxialShadingExample.Action
			AxialShadingExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreGraphicsImageTransform() As Boolean Handles CoreGraphicsImageTransform.Action
			ImageTransformExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreGraphicsPDFBrowser() As Boolean Handles CoreGraphicsPDFBrowser.Action
			dim w as new PDFBrowser
			w.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreGraphicsRadialShadingExample() As Boolean Handles CoreGraphicsRadialShadingExample.Action
			RadialShadingExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CoreTextOpenExampleWindow() As Boolean Handles CoreTextOpenExampleWindow.Action
			CoreTextExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function DebugReportMenu() As Boolean Handles DebugReportMenu.Action
			DebugReportExampleWindow.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ExamplesCarbonPasteboard() As Boolean Handles ExamplesCarbonPasteboard.Action
			CarbonPasteboardExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ExamplesLanguages() As Boolean Handles ExamplesLanguages.Action
			LanguagesWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ExamplesSockets() As Boolean Handles ExamplesSockets.Action
			MacTCPSocketsWin.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileAbout() As Boolean Handles FileAbout.Action
			Carbon.ShowAboutBox "MacOSLib", "demo", "", "https://github.com/macoslib/macoslib/"
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FolderManagerShowFolders() As Boolean Handles FolderManagerShowFolders.Action
			MacOSFolderBrowser.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FSEventStreamMenu() As Boolean Handles FSEventStreamMenu.Action
			FSEventStreamExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function IconServicesShowIconBrowser() As Boolean Handles IconServicesShowIconBrowser.Action
			MacIconWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function IKImageBrowserMenu() As Boolean Handles IKImageBrowserMenu.Action
			IKImageBrowserWND.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ImageCaptureMenu() As Boolean Handles ImageCaptureMenu.Action
			ICCameraExampleWND.show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ImageKitMenu() As Boolean Handles ImageKitMenu.Action
			IKDeviceBrowserWND.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function IOKitExternalPowerAdapter() As Boolean Handles IOKitExternalPowerAdapter.Action
			IOKitExternalPowerWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function IOKitPrimaryMACAddress() As Boolean Handles IOKitPrimaryMACAddress.Action
			IOKitPrimaryMACAddressExample.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function LabelExtensionMenu() As Boolean Handles LabelExtensionMenu.Action
			LabelExtensionExampleWindow.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MenuItemExamplesMenuLocalizedTextDragManager() As Boolean Handles MenuItemExamplesMenuLocalizedTextDragManager.Action
			DragManagerExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MenuItemExamplesMenuLocalizedTextThemeColors() As Boolean Handles MenuItemExamplesMenuLocalizedTextThemeColors.Action
			ThemeColorExample.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NavigationServicesOpenExampleWindow() As Boolean Handles NavigationServicesOpenExampleWindow.Action
			NavServicesParentWindow.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NSImageViewMenu() As Boolean Handles NSImageViewMenu.Action
			NSImageViewExampleWindow.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NSSliderKnobCellMeniu() As Boolean Handles NSSliderKnobCellMeniu.Action
			NSSliderExampleWindow.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NSSlidersExampleMenu() As Boolean Handles NSSlidersExampleMenu.Action
			NSSliderExampleWindow.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NSTokenFieldMenuItem() As Boolean Handles NSTokenFieldMenuItem.Action
			TokenFieldExampleWindow.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function QTKitQTCaptureView() As Boolean Handles QTKitQTCaptureView.Action
			QTCaptureViewExample.Show
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function QTKitQTMovieView() As Boolean Handles QTKitQTMovieView.Action
			QTMovieViewExample.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SpeechMenu() As Boolean Handles SpeechMenu.Action
			MacSpeechSynthesizerExample.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function StringExtensionMenu() As Boolean Handles StringExtensionMenu.Action
			StringExtensionsExampleWindow.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function StringExtensionsMenu() As Boolean Handles StringExtensionsMenu.Action
			UnicodeExtensionsExample.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SystemExtensionsMenu() As Boolean Handles SystemExtensionsMenu.Action
			SystemExtensionsWindow.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SystemIconsMenuItem() As Boolean Handles SystemIconsMenuItem.Action
			SystemIconsExampleWindow.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function UnicodeExtensionsMenu() As Boolean Handles UnicodeExtensionsMenu.Action
			UnicodeExtensionsExample.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowManagerAlpha() As Boolean Handles WindowManagerAlpha.Action
			AlphaWindow.Show
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowManagerProxyIcons() As Boolean Handles WindowManagerProxyIcons.Action
			ProxyIconWindow.Show
			return true
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub HandleTimerAction(theTimer as Timer)
		  
		  macoslibSplashWindow.Close
		  DefaultWindow.Show
		  
		  #pragma unused theTimer
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestBundleLookup()
		  dim f as FolderItem
		  f = LaunchServices.FindApp ("", "com.apple.finder", "")
		  if f = nil or not f.Exists then
		    MsgBox "Error: can't locate Finder.app"
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestCocoa()
		  #if targetMacOS
		    // Test ProcessInfo.Arguments. First item should be our app's path
		    dim args() as String = NSProcessInfo.ProcessInfo.Arguments
		    dim pathFromPI as String = args(0)
		    dim pathFromRB as String = App.ExecutableFile.POSIXPath
		    if pathFromPI <> pathFromRB then break // they should be equal, usually
		    
		    // Try to register something with the Services API
		    Cocoa.NSApplication.App.RegisterServices
		    
		    // Copy a file
		    dim srcFile as FolderItem = App.ExecutableFile // let's copy our code file (we just need to use some file we know to exist)
		    dim dstDir as FolderItem = SpecialFolder.Temporary
		    dstDir.Child(srcFile.Name).Delete
		    dim ok as Boolean
		    ok = NSWorkspace.PerformCopy (srcFile.Parent, dstDir, Array(srcFile.Name))
		    if not ok then break
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestFileManager()
		  // Test the FSRef related functions:
		  dim f as FolderItem, s as String, ref as FSRef
		  f = GetFolderItem("")
		  s = FileManager.NativePath( f )
		  ref = f.FSRef
		  if ref.FolderItem.AbsolutePath <> f.AbsolutePath then
		    break // test failed!
		  end
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static gPrefs as TTsSmartPreferences
			  if gPrefs = nil then
			    gPrefs = new TTsSmartPreferences ("") // <- enter your app's name here, it's necessary for Windows and Linux
			  end
			  return gPrefs
			End Get
		#tag EndGetter
		Prefs As TTsSmartPreferences
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		PrefsPL As DebugReportModule.PropertyList
	#tag EndProperty

	#tag Property, Flags = &h0
		SplashTimer As Timer
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
