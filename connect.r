# Connects to remote SQL database containing dataset

sqlConnString <- "Driver=SQL Server; Server=win.nathancastlecloud.net; Database=expedia; Uid=acarp; Pwd=M3r3dith*$tacyy"
sqlTable <- "dbo.data"
sqlRowsPerRead = 5000

sqlexpediaDS <- RxSqlServerData(connectionString = sqlConnString,
                                table = sqlTable, 
                                rowsPerRead = sqlRowsPerRead) 

sqluidTable <- "user_id" 

sqlWait <- TRUE   
sqlConsoleOutput <- FALSE  
sqlCompute <- RxInSqlServer(  
    connectionString = sqlConnString,             
    wait = sqlWait,   
    consoleOutput = sqlConsoleOutput)  
rxSetComputeContext(sqlCompute)






