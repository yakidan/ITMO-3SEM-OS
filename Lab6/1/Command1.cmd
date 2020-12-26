wmic os get Version > Version.txt 
wmic os get FreePhysicalMemory > FreePhysicalMemory.txt
wmic os get FreeVirtualMemory > FreeVirtualMemory.txt
wmic os get TotalVirtualMemorySize > TotalVirtualMemorySize.txt
wmic computersystem get TotalPhysicalMemory > TotalPhysicalMemory.txt
wmic logicaldisk list brief > Logicaldisk.txt
