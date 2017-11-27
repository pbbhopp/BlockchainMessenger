/* delete all data */
EXEC [dbo].[StartFromScratch]

/* create users */
DECLARE @UserID INT
EXEC @UserID = [dbo].[UserAdd] 'Bob'
EXEC @UserID = [dbo].[UserAdd] 'Alice'


/* create message */
DECLARE @MessageID INT
EXEC @MessageID = [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC MessageMarkRead @MessageID = 10000
WAITFOR DELAY '00:00:00.300'
EXEC @MessageID = [dbo].[MessageAdd] 1001,1000,'RE: Hey','Hey Bob! I''m doing great!'
WAITFOR DELAY '00:00:00.300'
EXEC MessageMarkRead @MessageID = 10001
WAITFOR DELAY '00:00:00.300'
EXEC @MessageID = [dbo].[MessageAdd] 1000,1001,'RE: RE: Hey','Would you like me to update the schema docs?'
WAITFOR DELAY '00:00:00.300'
EXEC MessageMarkRead @MessageID = 10002
WAITFOR DELAY '00:00:00.300'
EXEC @MessageID = [dbo].[MessageAdd] 1001,1000,'RE: RE: RE: Hey','Please!'
WAITFOR DELAY '00:00:00.300'
EXEC MessageMarkUnread @MessageID = 10002
WAITFOR DELAY '00:00:00.300'
EXEC MessageMarkRead @MessageID = 10003
WAITFOR DELAY '00:00:00.300'

select * from [User]
select * from [Message]
select * from [Transaction]
SELECT * FROM [Block]

EXEC BlockAdd
EXEC BlockMine

/* create messages */
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Hey Alice! How are you?'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1000,1001,'Hey','Ooof, sorry for the spam. I accidentally kept sending that...'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1001,1000,'RE: Hey','Not a problem Bob. I''ve just added you to my junk mail list ;)'

EXEC BlockAdd
EXEC BlockMine


EXEC  [dbo].[MessageAdd] 1000,1001,'Followup','Schema docs have been updated.'
WAITFOR DELAY '00:00:00.300'
EXEC  [dbo].[MessageAdd] 1001,1000,'RE: Followup','Thanks! Enjoy your weekend.'
WAITFOR DELAY '00:00:00.300'

EXEC BlockAdd
EXEC BlockMine
