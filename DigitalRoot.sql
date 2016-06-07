/* read more about the Digital root function here
   https://en.wikipedia.org/wiki/Digital_root
*/

create function DigitalRoot(@n integer) 
returns integer
as 
begin
  return 1+(@n-1)%9;
end;


-- tests
select dbo.DigitalRoot(10)   DigitalRootFunctionResult, 1 ShouldBe
select dbo.DigitalRoot(42)   DigitalRootFunctionResult, 6 ShouldBe
select dbo.DigitalRoot(1337) DigitalRootFunctionResult, 5 ShouldBe
select dbo.DigitalRoot(255)  DigitalRootFunctionResult, 3 ShouldBe

