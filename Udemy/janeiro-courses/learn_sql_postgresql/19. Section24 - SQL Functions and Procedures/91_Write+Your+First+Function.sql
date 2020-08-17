/* write a function called fix_homepage that updates
 * all suppliers with null in homepage field to 'N/A' 
 */
create or replace function fix_homepage() returns void as $$
	update suppliers set homepage = 'N/A' where homepage is null;
$$ language sql 

-- run function
select fix_homepage();

/* create a function called set_employee_default_photo to
 * update any missing photopath to a default http://accweb/emmployees/default/.bmp
 */
create or replace function set_employee_default_photo() returns void as $$
	update employees set photopath = 'http://accweb/emmployees/default/.bmp'
	where photopath is null;
$$ language sql

-- run function
select set_employee_default_photo();