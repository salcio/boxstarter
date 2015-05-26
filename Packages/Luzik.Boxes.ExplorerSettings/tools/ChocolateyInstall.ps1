try {

    Write-ChocolateySuccess 'Luzik.Boxes.ExplorerSettings'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.ExplorerSettings' $($_.Exception.Message)
  throw
}