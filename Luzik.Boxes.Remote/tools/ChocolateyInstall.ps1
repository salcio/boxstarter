try {

    cinst teamviewer -y

    Write-ChocolateySuccess 'Luzik.Boxes.Remote'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Remote' $($_.Exception.Message)
  throw
}