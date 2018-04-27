CREATE TABLE [dbo].[Book]
(
	[ISBN] VARCHAR(30) NOT NULL PRIMARY KEY, 
    [Title] VARCHAR(100) NOT NULL, 
    [YearPublished] INT NOT NULL, 
    [AuthorID] INT NOT NULL,
	[StudentID] VARCHAR(30) NULL,
	CONSTRAINT fk_Book_Author FOREIGN KEY ([AuthorID]) REFERENCES [Author] ([AuthorID]),
	CONSTRAINT fk_Book_Student FOREIGN KEY ([StudentID]) REFERENCES [Student] ([StudentID])
)
