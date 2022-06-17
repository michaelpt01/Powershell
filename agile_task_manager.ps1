param(
[parameter(mandatory=$true)]$Category,
[parameter(mandatory=$true)]$Top
)

if($Category -eq 'ws'){
$format = @{label="Memory(MB)";expression = {[int]($_.ws/1mb)}}
}
elseif($Category -eq 'pm'){
$format = @{label="Memory(MB)";expression = {[int]($_.pm/1mb)}}
}
else{

$format = @{label=$Category;expression = {[int]($_.$Category)}}
}


do{ 
$system = Read-Host "System Name"
Get-Process -ComputerName $system | Sort-Object -Descending -Property $Category| select -first $top processname, id, $format | ogv
$answer = Read-Host "Would you like to enter another system: yes/no"}
while($answer -ne 'no')

#Test123

