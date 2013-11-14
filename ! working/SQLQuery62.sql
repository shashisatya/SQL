SELECT  [LogFilename]
      ,[LogRow]
      ,[date]
      ,[time]
      ,[cIp]
      ,[csUsername]
      ,[sSitename]
      ,[sComputername]
      ,[sIp]
      ,[sPort]
      ,[csMethod]
      ,[csUriStem]
      ,[csUriQuery]
      ,[scStatus]
      ,[scSubstatus]
      ,[scWin32Status]
      ,[scBytes]
      ,[csBytes]
      ,[timeTaken]
      ,[csVersion]
      ,[csHost]
      ,[csUserAgent]
      ,[csCookie]
      ,[csReferer]
      ,[sEvent]
      ,[sProcessType]
      ,[sUserTime]
      ,[sKernelTime]
      ,[sPageFaults]
      ,[sTotalProcs]
      ,[sActiveProcs]
      ,[sStoppedProcs]
  FROM [TestData].[dbo].[IIS1]
where LogFilename like 'Q:\logs\LogFiles\W3SVC1\u%'



