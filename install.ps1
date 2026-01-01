$ErrorActionPreference = 'SilentlyContinue'
$hwID = ((Get-WmiObject Win32_BaseBoard).SerialNumber).Trim().Replace(' ','')
Write-Host '🔐 FLASHPLAY CORE v2.2' -ForegroundColor Cyan
Write-Host "💻 HWID: $hwID" -ForegroundColor Yellow
$chave = Read-Host '🔑 Digite sua chave FlashPlay'
if($chave -ne ($hwID + 'FP2026')) {
    Write-Host '❌ LICENÇA INVÁLIDA! discord.gg/dPkS8ykb' -ForegroundColor Red
    Start-Sleep 3
    exit
}
Write-Host '✅ AUTORIZADO! Aguarde...' -ForegroundColor Green
Start-Sleep 2
Write-Host '🎉 Execute comando #2 (me mande print primeiro!)' -ForegroundColor Green
pause
