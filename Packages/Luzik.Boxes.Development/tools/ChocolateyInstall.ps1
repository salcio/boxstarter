try {

    Write-ChocolateySuccess 'Luzik.Boxes.Development'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Development' $($_.Exception.Message)
  throw
}