
/*Changelog*/
/*10/18/12: Currenly can calculate the time difference for a single Case_Emp_ID that is provided in the script.
			Ultimately, this script will calculate the CALC_TIME for each record in the dbo.case_employee table*/

--CREATE PROCEDURE [dbo].[sp_CalcDate] @CaseID int
--AS
Declare @CaseEmpID int
SET @CaseEmpID = 4
/* Declare variables to be used for calculations. */
DECLARE @sql1 nvarchar(100), @sql2 nvarchar(100), @date1 nvarchar(60), @date2 nvarchar(60), @calc decimal(7,2)
DECLARE @retval1 int, @retval2 int, @ParmDef1 nvarchar(255), @ParmDef2 nvarchar(255)

/* Prepare query to capture output for @date1 (START_TIME) from sp_executesql. */
SET @sql1 = 'select @date1OUT = START_TIME from [dbo].[case_employee] where case_emp_ID =' +Convert(nvarchar,@CaseEmpID)+''
SET @ParmDef1 = N'@date1OUT datetime OUTPUT'

/* Execute @sql1 and capture the output into @date1  (START_TIME) for later calculaitons. */ 
EXEC sp_executesql @sql1, @ParmDef1, @date1OUT=@date1 OUTPUT;

/* Prepare query to capture output for @date2 (END_TIME) from sp_executesql. */
SET @sql2 = 'select @date2OUT = END_TIME from [dbo].[case_employee] where case_emp_ID =' +Convert(nvarchar,@CaseEmpID)+''
SET @ParmDef2 = N'@date2OUT datetime OUTPUT'

/* Execute @sql1 and capture the output into @date2 (END_TIME) for later calculaitons. */
EXEC sp_executesql @sql2, @ParmDef2, @date2OUT=@date2 OUTPUT;

set @calc = Convert(Float,DATEDIFF(minute, @date1, @date2)/60.0)

update [dbo].[case_employee] 
set CALC_TIME = @calc
where case_emp_ID = @CaseEmpID

--Select @calc
