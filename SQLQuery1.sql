CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
	[UserId] nvarchar(max)  NOT NULL
	primary key (Id)
);
GO

-- Creating table 'UnitSet'
CREATE TABLE [dbo].[Units] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [StudentId] int  NOT NULL
	primary key (Id),
	foreign key (StudentId) references Students(Id)

);
GO