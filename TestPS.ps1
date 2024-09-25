# Function definition
function Get-Greeting {
    param (
        [string]$Name
    )
    return "Hello, $Name!"
}

# Variables
$greeting = Get-Greeting -Name "World"
$numbers = 1..5
$hashTable = @{
    Name = "PowerShell"
    Version = "7.1"
}

# Conditional statement
if ($greeting -like "Hello*") {
    Write-Host $greeting
} else {
    Write-Host "Greeting not found."
}

# For loop
for ($i = 0; $i -lt $numbers.Length; $i++) {
    Write-Host "Number: $($numbers[$i])"
}

# ForEach loop
foreach ($number in $numbers) {
    Write-Host "Processing number: $number"
}

# While loop
$i = 0
while ($i -lt $numbers.Length) {
    Write-Host "While loop iteration: $i"
    $i++
}

# Do-While loop
$i = 0
do {
    Write-Host "Do-While loop iteration: $i"
    $i++
} while ($i -lt $numbers.Length)

# Do-Until loop
$i = 0
do {
    Write-Host "Do-Until loop iteration: $i"
    $i++
} until ($i -ge $numbers.Length)

# Switch statement
$day = (Get-Date).DayOfWeek
switch ($day) {
    "Monday" { Write-Host "Start of the work week." }
    "Friday" { Write-Host "End of the work week." }
    default { Write-Host "Midweek day." }
}

# Try-Catch-Finally
try {
    $result = 1 / 0
} catch {
    Write-Host "Caught an exception: $_"
} finally {
    Write-Host "This runs regardless of success or failure."
}

# Pipeline example
Get-Process | Where-Object { $_.CPU -gt 100 } | Select-Object -First 5
