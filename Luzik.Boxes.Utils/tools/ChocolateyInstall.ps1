try {

    cinst 7zip -y
    cinst notepadplusplus -y
    cinst notepad2-mod -y
    cinst adobereader -y
    cinst paint.net -y
    cinst totalcommander -y
    cinst everything -y

    Write-ChocolateySuccess 'Luzik.Boxes.Utils'
} catch {
  Write-ChocolateyFailure 'Luzik.Boxes.Utils' $($_.Exception.Message)
  throw
}