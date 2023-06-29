USE [MangoJRLibrary]
GO
CREATE ROLE [BookReader] AUTHORIZATION [sa]
GO
USE [MangoJRLibrary]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [BookReader]
GO
USE [MangoJRLibrary]
GO
ALTER ROLE [BookReader] ADD MEMBER [eylam]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[Series] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[Series] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[Book] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[Book] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[PhysicalLocation] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[PhysicalLocation] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT INSERT ON [dbo].[ReadHistory] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT SELECT ON [dbo].[ReadHistory] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT UPDATE ON [dbo].[ReadHistory] TO [BookReader]
GO
use [MangoJRLibrary]
GO
GRANT VIEW DEFINITION ON [dbo].[ReadHistory] TO [BookReader]
GO
