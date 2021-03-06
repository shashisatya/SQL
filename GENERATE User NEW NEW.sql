CREATE PROCEDURE [dbo].[GenerateUser]
AS
BEGIN
	DECLARE @userID INT, @now DATETIME, @AppUserID INT, @ChangeHistoryRowID INT, @IDSource VARCHAR(50), @LoginName NVARCHAR(50), @FirstName NVARCHAR(50), @LastName NVARCHAR(50), @Password NVARCHAR(50);

	SET @IDSource = ABS(CHECKSUM(NEWID()));
	SET @LoginName = 'User' + @IDSource;
	SET @FirstName = 'UserFirst' + @IDSource;
	SET @LastName = 'UserLast' + @IDSource;
	SET @Password = LOWER(@LoginName) + N'p@ssw0rd';-- MUST STORE THE LOGINNAME PORTION IN LOWERCASE!! 

	IF NOT EXISTS (
			SELECT 1
			FROM [AppUser]
			WHERE LoginName = @LoginName
			)
	BEGIN
		SET @now = GETUTCDATE()

		INSERT INTO [dbo].[AppUser] ([LoginName], [Password], [LastName], [FirstName], [Email], [ChangePassword], [LockDate], [PasswordChangedDate], [DeactivateDate], [UnsuccessfulAttempts], [LastAttemptedDate], [Active], [UpdateDate], [CreatedDate])
		VALUES (@LoginName, @Password, @LastName, @FirstName, N'', 0, NULL, @now, NULL, 0, NULL, 1, @now, @now);

		SELECT @userID = UserID
		FROM AppUser
		WHERE LastName = @LastName;

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 1, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 2, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 3, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 4, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 5, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 6, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 7, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 8, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 9, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 10, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 11, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 12, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 16, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 18, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 19, 1, N'admin, admin', @now)

		INSERT INTO [dbo].[AccessControlGroupUser] ([UserID], [AccessControlGroupID], [AddUserID], [AddUserName], [InsertDate])
		VALUES (@userID, 200, 1, N'admin, admin', @now)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 1, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 2, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 3, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 4, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 5, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 6, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 7, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 8, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 9, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 10, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 11, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 12, @Now, 1)

		INSERT INTO [Platform].[UserProfileRole] ([UserID], [RefProfileRoleID], [InsertDate], [InsertUserID])
		VALUES (@UserID, 300, @Now, 1)

		INSERT INTO [dbo].[UserRole] ([UserID], [RoleID])
		VALUES (@userID, 1)

		SELECT @IDSource AS IDSource, @LoginName AS LoginName, @FirstName AS FirstName, @LastName AS LastName, @Password AS 'Password';
	END;
END;
