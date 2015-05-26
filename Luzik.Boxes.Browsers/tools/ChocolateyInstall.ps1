try {
  
    cinst google-chrome-x64 -y
    cinst firefox -y
    
    Write-ChocolateySuccess 'Luzik.Boxes.Browsers'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Browsers' $($_.Exception.Message)
  throw
}