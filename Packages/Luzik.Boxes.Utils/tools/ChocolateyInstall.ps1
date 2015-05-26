try {

    Write-ChocolateySuccess 'Luzik.Boxes.Utils'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Utils' $($_.Exception.Message)
  throw
}