
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
(& "C:\Users\JeshuaLin\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion

Invoke-Expression (&starship init powershell)