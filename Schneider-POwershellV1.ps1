
$Platform = "https://github.com/Vishnu4226/Platform.git"
$Framework = "https://github.com/Vishnu4226/Framework.git"

function Schneider-Git
{
param(
[Parameter(Mandatory)]
[string] $Command, [string] $Msg )
    try {       
        Invoke-Expression "git $Command"      
    }
    catch [Exception]
    {               
                write-host $_.Exception.Message;
    }
    finally
    {
            write-host $Msg
    }
}
Schneider-Git "config --global user.name $(gitusername)" "Username set"
Schneider-Git "config --global user.email $(gitemail)" "Email set"

Schneider-Git "submodule add $Platform"
Schneider-Git "submodule add $Framework"

function Folder-size
{
param(
[Parameter(Mandatory)]
[string] $Folder)
    try {       
        $colItems = Get-ChildItem $Folder | Sort-Object
        foreach ($i in $colItems)
        {
        $subFolderItems = Get-ChildItem $i.FullName -recurse -force | Where-Object {$_.PSIsContainer -eq $false} | Measure-Object -property Length -sum | Select-Object Sum
        $i.FullName + " -- " + "{0:N4}" -f ($subFolderItems.sum / 1MB) + "MB"
        } 
    }
    catch [Exception]
    {               
        write-host $_.Exception.Message;
    }
    finally
    {
            write-host $Msg
    }
}
Folder-size "."