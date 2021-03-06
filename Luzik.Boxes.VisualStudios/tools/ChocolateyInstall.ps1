try {

    $isosFolder = "$env:temp\isos"
    Robocopy.exe '\\vmware-host\Shared Folders\luki\Documents\Virtual Machines.localized\installers\isos' $isosFolder *.iso /S
    cinst visualstudio2013ultimateIso -InstallArguments "/Features:'SQL WebTools Win8SDK WindowsPhone80' /iso:'$isosFolder\vs2013.4_ult_enu.iso'" -y -source "\\vmware-host\Shared Folders\luki\Documents\Virtual Machines.localized\installers\ChocolateyRepo;http://chocolatey.org/api/v2/"
    #cinst visualstudio2013ultimate -InstallArguments "/Features:'SQL WebTools Win8SDK WindowsPhone80'" -y
    Remove-Item $isosFolder -recurse
    
    #vs plugins
    cinst resharper -y    

    Write-ChocolateySuccess 'Luzik.Boxes.VisualStudios'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.VisualStudios' $($_.Exception.Message)
  throw
}