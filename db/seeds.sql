INSERT INTO department (dept_name)
VALUES
    ( "Admin"),
    ("Sales"),
    ("Engineering"),
    ("Product"),
    ("Delivery");

INSERT INTO roles (title, salary, dept_id)
VALUES 
    ("Associate", "55000", "1"),
    ("Senior Associate", "70000", "2"),
    ("Associate Manager", "85000", "2"),
    ("Manager", "95000", "3"),
    ("Senior Manager", "105000", "4"),
    ("Associate Director", "1250000", "5");

INSERT INTO employees (first_name, last_name, manager_id)
VALUES 
    ("Miriam", "Baxter", "005"),
    ("Ray", "Harmon", "005"),
    ("Xiomara", "Bridges", "005"),
    ("Waylon", "Dean", "008"),
    ("Peter", "Gregory", "008"),
    ("Rebekah", "Finley", "008"),
    ("Amiah", "Sampson", "008"),
    ("Eileen", "Gentry", "009"),
    ("Haylie", "Gallegos", "010"),
    ("Aidan", "Lozano", NULL);


-- INSERT INTO department (id, dept_id, dept_name, emp_name)
-- VALUES (001, "1", "Admin", "Miriam Baxter"),
--        (002, "1", "Admin", "Ray Harmon"),
--        (003, "2", "Sales", "Xiomara Bridges"),
--        (004, "2", "Sales", "Waylon Dean"),
--        (005, "2", "Sales", "Peter Gregory"),
--        (006, "3", "Engineering", "Rebekah Finley"),
--        (007, "3", "Engineering", "Amiah Sampson"),
--        (008, "4", "Product", "Eileen Gentry"),
--        (009, "4", "Product", "Haylie  Gallegos"),
--        (010, "5", "Delivery", "Aidan Lozano");
       
-- INSERT INTO roles (id, role_id, title, salary, dept_id)
-- VALUES (001, "11", "Associate", "55000", "1"),
--        (002, "11", "Associate", "55000", "1"),
--        (003, "12", "Senior Associate", "70000", "2"),
--        (004, "12", "Senior Associate", "70000", "2"),
--        (005, "13", "Associate Manager", "85000", "2"),
--        (006, "13", "Associate Manager", "85000", "3"),
--        (007, "14", "Manager", "95000", "3"),
--        (008, "14", "Manager", "95000", "4"),
--        (009, "15", "Senior Manager", "105000", "4"),
--        (010, "16", "Associate Director", "1250000", "5");

-- INSERT INTO employees (id, first_name, last_name, role_id, manager_id)
-- VALUES (001, "Miriam", "Baxter", "01", "005"),
--        (002, "Ray", "Harmon", "01", "005"),
--        (003, "Xiomara", "Bridges", "02", "005"),
--        (004, "Waylon", "Dean", "02", "008"),
--        (005, "Peter", "Gregory", "03", "008"),
--        (006, "Rebekah", "Finley", "03", "008"),
--        (007, "Amiah", "Sampson", "04", "008"),
--        (008, "Eileen", "Gentry", "04", "009"),
--        (009, "Haylie", "Gallegos", "05", "010"),
--        (010, "Aidan", "Lozano", "05", NULL);

-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- SOURCE seeds.sql;
-- select * from products;

-- SELECT database();
-- DESCRIBE categories;