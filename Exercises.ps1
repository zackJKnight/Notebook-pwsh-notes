
# 1. Discover properties and use Where-Object to find the proper commandlet name of the given alias.

$aliases = @(Get-ChildItem Alias:\)

$aliases[[int](Get-Random -Maximum $aliases.Length)] | Select-Object Name


# 2. Find