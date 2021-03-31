create table books (
	id serial not null primary key,
	name varchar(20) not null,
	price int default 0
);
	

insert into books (name, price) values
('Js', 10),
('PHP', 20),
('Go', 30),
('Rust', 40),
('Haskell', 50),
('Kitob', 60)
;


create or replace function find_by_price(p int, table_name varchar) returns table(
	id int,
	name varchar,
	price int
) language plpgsql as $$
	begin
		return query select books.id, books.name, books.price
		from table_name
		where books.price < p;
	end;
$$;






create function greet() returns varchar language plpgsql as $$

	begin
		return 'Hello World';
	end;

$$;

create function square(x int) returns int language plpgsql as $$

	declare
		message int := 0;

	begin

		message := x * x;

		return message;
	end;
$$;

create function size() returns int language plpgsql as $$
	begin
		return (
			select count(*) from example
		);
	end;
$$;

create or replace function fn() returns varchar language plpgsql as $$

	declare
		result varchar := 'Hello';

	begin

		result := case when 20 > 1 then 'OK' else 'ERROR' end;

		return result;

	end;

$$;

select age('1990-01-01') // 31


select fn('2020-01-1', 'Y') // 1
select fn('2020-01-1', 'M') // 14




STUDENTS

	STUDENT_ID
	STUDENT_NAME

ATTENDANCE
	ATT_ID
	STUDENT_ID
	ATT_DATE


SELECT * from att(0, true)

STUDENT		|	ATTENDANCE
------------------------------
MUHAMMAD	|	20
BOBUR		|	18
JAVOHIR		|	4
BEGZOD		|	2
JAXONGIR	|	0
SAID		|	0

SELECT * from att(1, true)

STUDENT		|	ATTENDANCE
------------------------------
MUHAMMAD	|	20


SELECT * from att(1, false)

STUDENT		|	ATTENDANCE
------------------------------
MUHAMMAD	|	2020-01-01
MUHAMMAD	|	2020-01-02
MUHAMMAD	|	2020-01-03
