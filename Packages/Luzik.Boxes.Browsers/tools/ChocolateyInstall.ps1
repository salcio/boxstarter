try {

    Write-ChocolateySuccess 'Luzik.Boxes.Browsers'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Browsers' $($_.Exception.Message)
  throw
}