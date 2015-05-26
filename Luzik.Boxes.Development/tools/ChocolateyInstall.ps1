try {
    
    cinst fiddler4 -y
    cinst dotpeek -y
    cinst NugetPackageExplorer -y
    cinst linqpad4 -y
    cinst javaruntime -y

    Write-ChocolateySuccess 'Luzik.Boxes.Development'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Development' $($_.Exception.Message)
  throw
}