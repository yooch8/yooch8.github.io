# 포트폴리오 배포 스크립트
# 사용법: index.html 을 고친 뒤 이 폴더에서
#   powershell -ExecutionPolicy Bypass -File .\publish.ps1 "바꾼 내용 한 줄"
# 하는 일: ① PDF 다시 생성 ② 변경 파일 커밋 ③ GitHub 에 push → 1~2분 뒤 https://yooch8.github.io 에 반영

param([string]$Message = "포트폴리오 내용 수정")

$ErrorActionPreference = "Continue"
Set-Location $PSScriptRoot

$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$page   = "file:///" + ((Join-Path $PSScriptRoot "index.html") -replace '\\', '/')
$pdf    = Join-Path $PSScriptRoot "유창훈_포트폴리오.pdf"

Write-Host "1/3 PDF 생성 중..."
$proc = Start-Process -FilePath $chrome -ArgumentList @("--headless", "--disable-gpu", "--no-pdf-header-footer", "--virtual-time-budget=8000", "--print-to-pdf=`"$pdf`"", $page) -Wait -PassThru -WindowStyle Hidden
Start-Sleep -Seconds 2

Write-Host "2/3 커밋 중..."
git add index.html README.md publish.ps1 "유창훈_포트폴리오.pdf"
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) { Write-Host "바뀐 내용이 없습니다."; exit 0 }
git commit -m $Message

Write-Host "3/3 GitHub 에 올리는 중..."
git push origin main
Write-Host "완료 — 1~2분 뒤 https://yooch8.github.io 에서 확인하세요."
