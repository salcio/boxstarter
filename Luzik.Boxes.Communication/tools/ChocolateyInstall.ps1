try {

    cinst viber -y

    Write-ChocolateySuccess 'Luzik.Boxes.Communication'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Communication' $($_.Exception.Message)
  throw
}