try {

    Update-ExecutionPolicy Unrestricted
    Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
    Enable-RemoteDesktop
    Disable-InternetExplorerESC

    Write-ChocolateySuccess 'Luzik.Boxes.ExplorerSettings'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.ExplorerSettings' $($_.Exception.Message)
  throw
}