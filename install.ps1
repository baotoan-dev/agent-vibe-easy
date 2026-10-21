# Agent Vibe Easy - Fast Installer for Windows (PowerShell)
$targetDir = Join-Path (Get-Location) ".agents"
$repoUrl = "https://github.com/baotoan-dev/agent-vibe-easy.git"

Write-Host "🛸 [Agent Vibe Easy] Đang kích hoạt bộ công cụ Agent toàn năng..." -ForegroundColor Cyan

if (Test-Path $targetDir) {
    Write-Host "⚠️ Thư mục .agents đã tồn tại tại dự án này. Đang cập nhật..." -ForegroundColor Yellow
    Push-Location $targetDir
    git pull origin main
    Pop-Location
} else {
    git clone $repoUrl $targetDir --quiet
    Write-Host "✅ ĐÃ KÍCH HOẠT THÀNH CÔNG!" -ForegroundColor Green
    Write-Host "📦 54 Skills | 11 Rules (Auto-Routing) | 5 Workflows | 6 Subagents | 7 Templates" -ForegroundColor White
}
