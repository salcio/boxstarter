try {

    # Allow reboots
    $Boxstarter.RebootOk=$true
    $Boxstarter.NoPassword=$false
    $Boxstarter.AutoLogin=$true
    
    # Allow reboots
    $Boxstarter.RebootOk=$true
    $Boxstarter.NoPassword=$false
    $Boxstarter.AutoLogin=$true
     
    if (Test-PendingReboot) { Invoke-Reboot }
     
    # Update Windows and reboot if necessary
    Install-WindowsUpdate -AcceptEula
    if (Test-PendingReboot) { Invoke-Reboot }
    
    Install-BoxstarterPackage -PackageName ExplorerSetting
    Install-BoxstarterPackage -PackageName Browsers
    Install-BoxstarterPackage -PackageName Remote
    Install-BoxstarterPackage -PackageName SourceControll
    Install-BoxstarterPackage -PackageName Utils
    Install-BoxstarterPackage -PackageName WindowsFeatures
    Install-BoxstarterPackage -PackageName Development
    Install-BoxstarterPackage -PackageName Communication
    Install-BoxstarterPackage -PackageName VisualStudios
    Install-BoxstarterPackage -PackageName OtherIdes


    Write-ChocolateySuccess 'Luzik.Boxes.DevBox'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.DevBox' $($_.Exception.Message)
  throw
}