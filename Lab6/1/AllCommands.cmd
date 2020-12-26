::1
wmic os get Version > Version.txt 
wmic os get FreePhysicalMemory > FreePhysicalMemory.txt
wmic os get FreeVirtualMemory > FreeVirtualMemory.txt
wmic os get TotalVirtualMemorySize > TotalVirtualMemorySize.txt
wmic computersystem get TotalPhysicalMemory > TotalPhysicalMemory.txt
wmic logicaldisk list brief > Logicaldisk.txt

::2
md TEST
copy *.txt TEST
cd TEST

::3
copy *.txt All.txt

::4
del F*.txt V*.txt T*.txt L*.txt