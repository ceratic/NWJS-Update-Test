!include "MUI2.nsh"

Name "nwjsupdatetest"
BrandingText "aluxian.com"

# set the icon
!define MUI_ICON "icon.ico"

# define the resulting installer's name:
OutFile "..\dist\nwjsupdatetestSetup.exe"

# set the installation directory
InstallDir "$PROGRAMFILES\nwjsupdatetest\"

# app dialogs
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN_TEXT "Start nwjsupdatetest"
!define MUI_FINISHPAGE_RUN "$INSTDIR\nwjsupdatetest.exe"

!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

# default section start
Section

  # delete the installed files
  RMDir /r $INSTDIR

  # define the path to which the installer should install
  SetOutPath $INSTDIR

  # specify the files to go in the output path
  File /r ..\build\nwjsupdatetest\win32\*

  # create the uninstaller
  WriteUninstaller "$INSTDIR\Uninstall nwjsupdatetest.exe"

  # create shortcuts in the start menu and on the desktop
  CreateShortCut "$SMPROGRAMS\nwjsupdatetest.lnk" "$INSTDIR\nwjsupdatetest.exe"
  CreateShortCut "$SMPROGRAMS\Uninstall nwjsupdatetest.lnk" "$INSTDIR\Uninstall nwjsupdatetest.exe"
  CreateShortCut "$DESKTOP\nwjsupdatetest.lnk" "$INSTDIR\nwjsupdatetest.exe"

SectionEnd

# create a section to define what the uninstaller does
Section "Uninstall"

  # delete the installed files
  RMDir /r $INSTDIR

  # delete the shortcuts
  Delete "$SMPROGRAMS\nwjsupdatetest.lnk"
  Delete "$SMPROGRAMS\Uninstall nwjsupdatetest.lnk"
  Delete "$DESKTOP\nwjsupdatetest.lnk"

SectionEnd
