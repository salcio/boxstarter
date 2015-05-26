try {

    Write-ChocolateySuccess 'Luzik.Boxes.VisualStudios'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.VisualStudios' $($_.Exception.Message)
  throw
}