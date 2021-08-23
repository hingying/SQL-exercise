-- 6.1 List all the scientists' names, their projects' names, 
    -- and the hours worked by that scientist on each project, 
    -- in alphabetical order of project name, then scientist name.
    
select* from (select*from scientists left join assignedto a on a.scientist= scientists.ssn) as temp 
left join projects on temp.project = projects.code order by projects.name, temp.name;    

-- 6.2 Select the project names which are not assigned yet
select*from projects where code not in (select project from assignedto);