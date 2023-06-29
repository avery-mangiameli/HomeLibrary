USE [MangoJRLibrary]
GO
CREATE ROLE [BookOwner] AUTHORIZATION [sa]
GO
USE [MangoJRLibrary]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [BookOwner]
GO
USE [MangoJRLibrary]
GO
ALTER ROLE [BookOwner] ADD MEMBER [mattm]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[Person] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT UPDATE ON [dbo].[Person] TO [BookOwner]
GO
use [MangoJRLibrary] 
GO
GRANT VIEW DEFINITION ON [dbo].[Person] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT INSERT ON [dbo].[Series] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[Series] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT UPDATE ON [dbo].[Series] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[Series] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT INSERT ON [dbo].[Book] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[Book] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[Book] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT INSERT ON [dbo].[PurchaseHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[PurchaseHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT UPDATE ON [dbo].[PurchaseHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[PurchaseHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT INSERT ON [dbo].[PhysicalLocation] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[PhysicalLocation] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT UPDATE ON [dbo].[PhysicalLocation] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[PhysicalLocation] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT INSERT ON [dbo].[ReadHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[ReadHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT UPDATE ON [dbo].[ReadHistory] TO [BookOwner]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[ReadHistory] TO [BookOwner]
GO
