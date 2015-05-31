try {

    # Allow reboots
    $Boxstarter.RebootOk=$true
    $Boxstarter.NoPassword=$false
    $Boxstarter.AutoLogin=$true
     
    if (Test-PendingReboot) { Invoke-Reboot }
     
    # Update Windows and reboot if necessary
    Install-WindowsUpdate -AcceptEula
    if (Test-PendingReboot) { Invoke-Reboot }
    
    Install-BoxstarterPackage -PackageName Luzik.Boxes.ExplorerSettings, Luzik.Boxes.Browsers, Luzik.Boxes.Remote, Luzik.Boxes.SourceControl,Luzik.Boxes.Utils,Luzik.Boxes.WindowsFeatures,Luzik.Boxes.Development,Luzik.Boxes.Communication,Luzik.Boxes.VisualStudios, Luzik.Boxes.OtherIdes


    Write-ChocolateySuccess 'Luzik.Boxes.DevBox'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.DevBox' $($_.Exception.Message)
  throw
}