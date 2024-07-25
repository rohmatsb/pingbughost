while ($true) {
    Test-Connection -Count 2 -ComputerName "img.email3.vidio.com"
    Test-Connection -Count 2 -ComputerName "quiz.vidio.com"
    Start-Sleep -Seconds 30
}