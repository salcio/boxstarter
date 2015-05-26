try {

    Write-ChocolateySuccess 'Luzik.Boxes.WindowsFeatures'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.WindowsFeatures' $($_.Exception.Message)
  throw
}