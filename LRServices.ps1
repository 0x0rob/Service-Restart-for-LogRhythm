Restart-Service -Name LRAIEEngine
Restart-Service -Name LRAIEComMgr
Restart-Service -Name LogRhythmWebConsoleAPI
Restart-Service -Name LogRhythmWebConsoleUI
Restart-Service -Name LogRhythmWebIndexer
Restart-Service -Name LogRhythmWebServicesHostAPI

$caption="Restart Mediator"
$message="Choices:"
$choices = @("&Yes","&No")

$choicedesc = New-Object System.Collections.ObjectModel.Collection[System.Management.Automation.Host.ChoiceDescription] 
$choices | foreach  { $choicedesc.Add((New-Object "System.Management.Automation.Host.ChoiceDescription" -ArgumentList $_))} 


$prompt = $Host.ui.PromptForChoice($caption, $message, $choicedesc, 0)

Switch ($prompt)
     {
       0 {Restart-Service -Name scmedsvr}
       1 {Write-Host "Not Restarting Mediator"}
     }