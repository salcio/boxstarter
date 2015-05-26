try {

    Write-ChocolateySuccess 'Luzik.Boxes.SourceControl'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.SourceControl' $($_.Exception.Message)
  throw
}