try {

    # Allow reboots
    $Boxstarter.RebootOk=$true
    $Boxstarter.NoPassword=$false
    $Boxstarter.AutoLogin=$true
     
    if (Test-PendingReboot) { Invoke-Reboot }
     
    # Update Windows and reboot if necessary
    Install-WindowsUpdate -AcceptEula
    if (Test-PendingReboot) { Invoke-Reboot }
    
    Install-BoxstarterPackage -PackageName Luzik.Boxes.ExplorerSetting
    Install-BoxstarterPackage -PackageName Luzik.Boxes.Browsers
    Install-BoxstarterPackage -PackageName Luzik.Boxes.Remote
    Install-BoxstarterPackage -PackageName Luzik.Boxes.SourceControll
    Install-BoxstarterPackage -PackageName Luzik.Boxes.Utils
    Install-BoxstarterPackage -PackageName Luzik.Boxes.WindowsFeatures
    Install-BoxstarterPackage -PackageName Luzik.Boxes.Development
    Install-BoxstarterPackage -PackageName Luzik.Boxes.Communication
    Install-BoxstarterPackage -PackageName Luzik.Boxes.VisualStudios
    Install-BoxstarterPackage -PackageName Luzik.Boxes.OtherIdes


    Write-ChocolateySuccess 'Luzik.Boxes.DevBox'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.DevBox' $($_.Exception.Message)
  throw
}