try {

    Write-ChocolateySuccess 'Luzik.Boxes.DevBox'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.DevBox' $($_.Exception.Message)
  throw
}