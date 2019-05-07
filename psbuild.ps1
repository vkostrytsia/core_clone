
$project_files = Get-ChildItem -Path $args[0] -Include "*.csproj" -Recurse
$dotnet_path = "$env:ProgramFiles\dotnet\dotnet.exe"
$project_files | ForEach-Object -Process { & $dotnet_path build $_.FullName '--configuration' $args[1] }
