#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "$env:USERPROFILE\scoop\apps\miniconda3\current\Scripts\conda.exe") {
    (& "$env:USERPROFILE\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion
