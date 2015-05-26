try {

    Write-ChocolateySuccess 'Luzik.Boxes.OtherIdes'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.OtherIdes' $($_.Exception.Message)
  throw
}