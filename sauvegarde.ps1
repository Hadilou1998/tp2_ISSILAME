 = D:Archives

if (Test-Path ) {
    Get-ChildItem -Path  -File |
        Where-Object { feature/rotation.LastWriteTime -lt (Get-Date).AddDays(-30) } |
        Remove-Item -WhatIf
}
