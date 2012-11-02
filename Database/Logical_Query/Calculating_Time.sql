USE [LawFirmDRM2]
GO

/****** Object:  StoredProcedure [dbo].[sp_CalcTime]    Script Date: 11/1/2012 7:25:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[sp_CalcTime]
AS
/*
Changelog:
Date      Comment
------------------------------------------------------------------------------------------------------------
10/18/12: Currenly can calculate the time difference for a single Case_Emp_ID that is provided in the script.
			Ultimately, this script will calculate the CALC_TIME for each record in the dbo.case_employee table.
10/28/12: Procedure will now perform the date-time calculation for any existing record with a CASE_EMP_ID. Also
			will update the CALC_TIME for each record unless the calculated time is < .5.
11/1/12: Updated the ELSEIF statement to update the CALC_TIME to NULL.
------------------------------------------------------------------------------------------------------------
*/
/* Declare variables to be used for calculations. */
DECLARE @sql1 nvarchar(255), @sql2 nvarchar(255), @date1 nvarchar(60), @date2 nvarchar(60), @calc decimal(7,2)
DECLARE @retval1 int, @retval2 int, @ParmDef1 nvarchar(255), @ParmDef2 nvarchar(255)
DECLARE @CaseEmpID int

/* Declare curor. */
DECLARE CaseEmpID CURSOR FOR
SELECT case_emp_id FROM [dbo].[case_employee];
OPEN CaseEmpID
FETCH NEXT FROM CaseEmpID 
INTO @CaseEmpID
WHILE @@FETCH_STATUS = 0
BEGIN

/* Prepare query to capture output for @date1 (START_TIME) from sp_executesql. */
SET @sql1 = 'select @date1OUT = START_TIME from [dbo].[case_employee] where case_emp_ID =' +Convert(nvarchar,@CaseEmpID)+''
SET @ParmDef1 = N'@date1OUT datetime OUTPUT'

/* Execute @sql1 and capture the output into @date1  (START_TIME) for later calculations. */ 
EXEC sp_executesql @sql1, @ParmDef1, @date1OUT=@date1 OUTPUT;

/* Prepare query to capture output for @date2 (END_TIME) from sp_executesql. */
SET @sql2 = 'select @date2OUT = END_TIME from [dbo].[case_employee] where case_emp_ID =' +Convert(nvarchar,@CaseEmpID)+''
SET @ParmDef2 = N'@date2OUT datetime OUTPUT'

/* Execute @sql1 and capture the output into @date2 (END_TIME) for later calculations. */
EXEC sp_executesql @sql2, @ParmDef2, @date2OUT=@date2 OUTPUT;

/* Calculate and store the difference between the START_TME and END_TIME. 
Also, divide the minutes calculated by 60 and convert to float for preserve decimal values.*/
set @calc = Convert(Float,DATEDIFF(minute, @date1, @date2)/60.0)

/* 
Append the calculated difference to the record with matching case_emp_ID.
Update the CALC_TIME if @calc is greater, or equal to, .5. Otherwise, notify user.
*/
IF @calc >= .5
BEGIN
update [dbo].[case_employee] 
set CALC_TIME = @calc
where case_emp_ID = @CaseEmpID
END 
ELSE
update dbo.case_employee
set CALC_TIME = NULL
where case_emp_ID = @CaseEmpId
--PRINT 'The following Case_Emp_ID was not updated due to a negative value (END_TIME not present):' + Convert(varchar(10),@CaseEmpID)
FETCH NEXT FROM CaseEmpID INTO @CaseEmpID
END
CLOSE CaseEmpID
DEALLOCATE CaseEmpID
GO


