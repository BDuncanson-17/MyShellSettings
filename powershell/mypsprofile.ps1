
function Invoke-Cfn {
    Invoke-PythonCode -Code $cfn
}


function Open-FileWithEditor {
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$Path
    )

    $notepadPlusPlus = "notepad++.exe"
    $notepad = "notepad.exe"

    if (Test-Path $notepadPlusPlus) {
        Start-Process $notepadPlusPlus -ArgumentList $Path
    }
    else {
        Start-Process $notepad -ArgumentList $Path
    }
}


function Edit-Profile(){
    Open-FileWithEditor -Path $PROFILE
}

function Exit-PSWindow{
    Exit
}


Set-Alias -Name ep -Value Edit-Profile
Set-Alias -Name cfn -Value Invoke-Cfn
Set-Alias -Name x -Value Exit-PSWindow
 
