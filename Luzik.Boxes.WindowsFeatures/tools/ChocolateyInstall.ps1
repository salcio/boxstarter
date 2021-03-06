try {
    
    # Allow reboots
    $Boxstarter.RebootOk=$true
    $Boxstarter.NoPassword=$false
    $Boxstarter.AutoLogin=$true
    
    cinst IIS-WebServerRole -source windowsfeatures
    cinst IIS-HttpCompressionDynamic -source windowsfeatures
    cinst IIS-ManagementScriptingTools -source windowsfeatures
    cinst IIS-WindowsAuthentication -source windowsfeatures

    Write-ChocolateySuccess 'Luzik.Boxes.WindowsFeatures'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.WindowsFeatures' $($_.Exception.Message)
  throw
}