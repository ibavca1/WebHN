use[ax_molniya]

declare @t table(Msg varchar(255))
insert into @t
select '1'
union
select '1 2'
union 
select '1 2 3 4'
select * from @t
select 
	Word
	--,count(*) as cl
	,p1
	,string
from @t 
join master..spt_values on
	substring(' '+Msg,Number,1)=' ' and
	Number<len(Msg)+1
cross apply (select string=substring(' '+Msg+' ',Number+1,len(Msg)+1)) f1
cross apply (select p1=charindex(' ', string)) f2
cross apply (select Word=substring(Msg,Number,p1)) f4
where Type='P' and Number>0
--group by Word


select * from master..spt_values