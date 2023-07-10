use MangoJRLibrary
GO

create table BooksOwned(
	BookID int identity NOT NULL,
	Title nvarchar(255) NOT NULL,
	AuthorID int NOT NULL,
	PageCnt int,
	BookType nvarchar(255),
	CoverType nvarchar(255),	
	SeriesID int,
	SeriesNum int,
	CopyrightDate int,
	PublisherID int,
	Edition int,
	UPC nvarchar(25),
	DDC int,
	OwnedStatus bit, 
	CONSTRAINT PK_BookID PRIMARY KEY (BookID)
) 

create table BooksToBuy(
	Title nvarchar(255) NOT NULL,
	AuthorName nvarchar(255) NOT NULL,
	BookType nvarchar(255),
	CoverType nvarchar(255),	
	SeriesName nvarchar(255),
	SeriesNum int,
	OwnedStatus bit
)

create table Author(
	AuthorID int identity NOT NULL,
	AuthorName nvarchar(255) NOT NULL,
	Website nvarchar(255) null,
	CONSTRAINT PK_AuthorID PRIMARY KEY (AuthorID)
)

create table Book_Genre(
	bgID int identity NOT NULL,
	BookID int NOT NULL,
	GenreID int NOT NULL,
	CONSTRAINT PK_bgID PRIMARY KEY (bgID)
)

create table Genre(
	GenreID int identity NOT NULL,
	GenreName nvarchar(255) NOT NULL,
	GenreDescription nvarchar(max),
	CONSTRAINT PK_GenreID PRIMARY KEY (GenreID)
)

create table Series(
	SeriesID int identity NOT NULL,
	SeriesName nvarchar(255) NOT NULL,
	SeriesTotalNum int,
	CONSTRAINT PK_SeriesID PRIMARY KEY (SeriesID)
) 

create table Publisher(
	PublisherID int identity NOT NULL,
	PublisherName nvarchar(255) NOT NULL,
	PublisherAddress nvarchar(255),
	PublisherCity nvarchar(255),
	PublisherState nvarchar(255),
	PublisherCountry nvarchar(255),
	CONSTRAINT PK_PublisherID PRIMARY KEY (PublisherID)
)

create table Person(
	PersonID int identity NOT NULL,
	FirstName nvarchar(255) NOT NULL,
	LastName nvarchar(255) NOT NULL,
	DateofBirth date NOT NULL,
	Age int NOT NULL,
	Interest1 nvarchar(255),
	Interest2 nvarchar(255),
	Interest3 nvarchar(255),
	CONSTRAINT PK_PersonID PRIMARY KEY (PersonID)
)

create table PhysicalLocation(
	BookID int,
	CaseLocation int,
	ShelfLocation int,
	CONSTRAINT PK_PhysicalLocation PRIMARY KEY (CaseLocation, ShelfLocation)
)

create table PurchaseHistory(
	PurchaseID int identity NOT NULL Primary Key,
	PersonID int,
	BookID int NOT NULL,
	PurchaseDate date,
	PurchaseLocation nvarchar(255),
	PurchasePrice money,
	CONSTRAINT PK_PurchaseID PRIMARY KEY (PurchaseID)
)

create table ReadHistory(
	BookID int NOT NULL,
	PersonID int NOT NULL,
	StartDate date,
	EndDate date,
	ReviewScore int
)