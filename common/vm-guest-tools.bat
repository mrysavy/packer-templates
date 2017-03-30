if "%PACKER_BUILDER_TYPE%" equ "vmware-iso" goto :vmware
if "%PACKER_BUILDER_TYPE%" equ "virtualbox-iso" goto :virtualbox
if "%PACKER_BUILDER_TYPE%" equ "parallels-iso" goto :parallels
goto :done

:vmware
goto :done

:virtualbox
cmd /c E:\cert\VBoxCertUtil add-trusted-publisher E:\cert\vbox-sha1.cer --root E:\cert\vbox-sha1.cer
cmd /c E:\cert\VBoxCertUtil add-trusted-publisher E:\cert\vbox-sha256.cer --root E:\cert\vbox-sha256.cer
cmd /c E:\cert\VBoxCertUtil add-trusted-publisher E:\cert\vbox-sha256-r3.cer --root E:\cert\vbox-sha256-r3.cer
cmd /c E:\VBoxWindowsAdditions.exe /S
goto :done

:parallels
goto :done

:done

