!macro customInit
  ${If} $INSTDIR == ""
    ReadRegStr $0 HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\com.pi-desktop.app" "InstallLocation"
    ${If} $0 == ""
      ReadRegStr $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\com.pi-desktop.app" "InstallLocation"
    ${EndIf}

    ${If} $0 == ""
      ReadRegStr $0 HKCU "Software\com.pi-desktop.app" "InstallLocation"
      ${If} $0 == ""
        ReadRegStr $0 HKLM "Software\com.pi-desktop.app" "InstallLocation"
      ${EndIf}
    ${EndIf}

    ${If} $0 != ""
      StrCpy $INSTDIR $0
    ${EndIf}
  ${EndIf}
!macroend
