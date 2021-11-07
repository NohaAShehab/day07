-- create or replace function myfun() returns int as  $$
-- declare 
-- x integer=10;
-- begin
--     x = x + 100;
--     return 1000;
-- end;
-- $$ LANGUAGE plpgsql;

-- postgres support float



-- create function testfun(x int , y int) returns int
-- as $$
-- begin 
-- return x+y;
-- end; 
-- $$ LANGUAGE plpgsql;


-- create function netsal(sal int) returns float as 
-- $$
-- begin 
-- return sal*.9;
-- end;
-- $$ LANGUAGE plpgsql;

-- select name, netsal(salary) from employees;

-- name [ CONSTANT ] type [ NOT NULL ]
-- [ := expression ];

-- create function testvar()returns int as $$
-- declare 
--     x int := 10;
--     y CONSTANT int = 5;
-- begin
--     x = 15;
--     return x+y;
-- end;
-- $$ LANGUAGE plpgsql;


-- create or replace function testqunatity(param int)returns numeric as $$
-- declare 
--     x numeric(5,2);
-- begin
--     x = 7.5;
--     return x;
-- end;
-- $$ LANGUAGE plpgsql;



-- create or replace function rowdata(tablename text)
-- returns t.id%type as $$
-- declare s t.id%type;
-- begin
--     select salary into s from ."?tablename" where id =1;
--     return s;
-- end;
-- $$ LANGUAGE plpgsql;


-- CREATE OR REPLACE FUNCTION some_f(_tbl regclass, OUT result integer)
-- AS
-- $$
-- BEGIN
--    EXECUTE format('SELECT (EXISTS (SELECT FROM %s WHERE id = 1))::int', _tbl)
--    INTO result;
-- END
-- $$ LANGUAGE plpgsql;


-- create function test(x int) returns boolean as 
-- $$
-- begin
--     if x > 5 then 
--     return 't';
--     else
--     return 'f';
--     end if;
-- END
-- $$ LANGUAGE plpgsql;

-- myid integer;
-- name varchar;
-- Name varchar = 'Noha';
-- Name varchar := 'Noha Shehab';
-- quantity numeric(5,2);
-- user_id CONSTANT integer := 10;
-- myfield tablename.columnname%TYPE;

-- if condition 
-- then 
--     response;
-- elsif condition 
-- then 

-- else
--     do something;
-- end if 


-- CASE 
--     WHEN  condition;
--     THEN dosomething;
--     WHEN  condition;
--     THEN dosomething;
--     ELSE 
--         dosomething;
-- END CASE


-- create function getmode (sleephours int) 
-- returns text as 
-- $$
-- declare mood text;
-- begin
--     CASE
--     when sleephours > 7
--     then mood = 'happy';
--     when sleephours =7
--     then mood = 'fine';
--     when sleephours < 7
--     then mood = 'need to sleep';
--     END CASE ;
-- end;
-- $$ LANGUAGE plpgsql;

-- CREATE OR REPLACE FUNCTION displayTable(x int) 
-- RETURNS void AS $$
-- DECLARE
-- tableOf int:=x;
-- BEGIN
-- FOR counter IN 1..10
-- LOOP
-- RAISE NOTICE '%', tableOf*counter;
-- END LOOP;
-- END;
-- $$ LANGUAGE plpgsql;

-- do $$
-- declare 
--    counter integer := 0;
-- begin
--    while counter < 5 loop
--       raise notice 'Counter %', counter;
-- 	  counter := counter + 1;
--    end loop;
-- end$$;

-- create FUNCTION loopfun () returns void as 
-- $$
-- declare 
--    counter integer := 0;
-- begin
--    while counter < 5 loop
--       raise notice 'Counter %', counter;
-- 	  counter := counter + 1;
--    end loop;
-- end;
-- $$ LANGUAGE plpgsql


-- create or replace FUNCTION selectrow() returns text as $$
-- declare
--    selected_emp employees%rowtype;
-- begin
--    -- select actor with id 10   
--    select * 
--    from employees
--    into selected_emp
--    where id = 1;

--    -- show the number of actor
--    raise notice 'The actor name is % %',
--       selected_emp.name,
--       selected_emp.age;

--     return selected_emp;

-- end; 
-- $$ LANGUAGE plpgsql;


create or replace FUNCTION recordrow() returns text as $$
declare
   selected_emp record;
begin
   -- select actor with id 10   
   select * 
   from employees
   into selected_emp
   where id = 1;

   -- show the number of actor
   raise notice 'The actor name is % %',
      selected_emp.name,
      selected_emp.age;

    return selected_emp;

end; 
$$ LANGUAGE plpgsql;



