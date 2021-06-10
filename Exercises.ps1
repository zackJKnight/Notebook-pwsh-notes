
# 1. Discover properties and use Where-Object 
#    to find the proper commandlet name of the given alias.

$aliases = @(Get-ChildItem Alias:\)

$aliases[[int](Get-Random -Maximum $aliases.Length)] | `
    Select-Object Name


# 2. Find a command in the Microsoft.PowerShell.Utility 
#    module that can generate a GUID. Generate a GUID.
Where-Object { $_.Prop -like 'myTerm'}
# Hint
Get-Command
# -or
Get-Help

# 3. If today is an even day, Write 'We're even!' to the console. 
#    Otherwise, write 'We got a score to settle'

# 4. Start the notepad process and then find the path 
#    to the executable file that is running.

# 5. If you're on Windows, measure how many services are running
#    Resist the urge to look at the hint
#    Hint 
Get-Service 
and 
Measure-Object

# 6. Given the Web-Data script, change it to show headlines 
#    from the previous month