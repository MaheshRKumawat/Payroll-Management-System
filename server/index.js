const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");
const bodyParser = require("body-parser");
const flash = require('connect-flash');

app.use(cors());
app.use(express.json());
app.use(express.static(__dirname + "/views"));
// app.use('/', express.static('views'));
app.use(bodyParser.urlencoded({extended:true}));
app.set("view engine","ejs");
app.use(flash());

app.get("/",async(req, res)=>{
    try{
        res.render("index.ejs");
    }catch(err){
        console.log(err.message)
    }
});

app.get("/employees",async(req, res)=>{
    try{
        const text = "SELECT * FROM EMPLOYEE;"
        var data = await pool.query(text);
        data = data.rows;
        res.render("employee/index.ejs",{data: data});
    }catch(err){
        console.log(err.message)
    }
});

app.get("/departments",async(req, res)=>{
    try{
        const text = "SELECT * FROM DEPARTMENT;"
        var data = await pool.query(text);
        data = data.rows;
        res.render("department/index.ejs",{data: data});
    }catch(err){
        console.log(err.message)
    }
});

app.get("/employees/new", async(req, res)=>{
    try{
        res.render("employee/new.ejs");
    }catch(err){
        console.log(err.message);
    }
});

app.post("/employees",async(req,res)=>{
    try{
        var first_name = req.body.first_name;
        var middle_name = req.body.middle_name;
        var last_name = req.body.last_name; 
        var email = req.body.email; 
        var phone_number = req.body.phone_number;
        var gender = req.body.gender;
        var emp_dob = req.body.emp_dob;
        var emp_doj = req.body.emp_doj;
        var d_id = req.body.d_id;
        var address = req.body.address;
        const text = "INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('"+first_name +"','"+middle_name +"','"+last_name +"','"+email +"','"+phone_number +"','"+emp_dob +"','"+emp_doj +"','"+gender +"','"+d_id +"','"+address+"');";
        var insert = await pool.query(text);
        console.log(insert);
        res.redirect("/employees");
    }catch(err){
        console.log(err);
    }
});

app.get("/employees/:id",async(req, res)=>{
    try{
        const id = req.params.id;
        var d_id = 0;
        const text1 = "SELECT * FROM EMPLOYEE WHERE emp_id="+id+";";
        const text2 = "SELECT * FROM WORKS_ON WHERE emp_id="+id+";";
        const text3 = "SELECT * FROM DEPENDENTS WHERE emp_id="+id+";";
        const text4 = "SELECT * FROM PAY_ROLL WHERE emp_id="+id+";";
        const text6 = "SELECT emp_dob :: DATE FROM EMPLOYEE WHERE emp_id="+id+";";
        var employee = await pool.query(text1);
        employee = employee.rows[0];
        if(employee['d_id']){
            d_id = employee['d_id'];
        }
        const text5 = "SELECT * FROM PAY_GRADE WHERE dept_id="+d_id+";";
        var projects = await pool.query(text2);
        projects = projects.rows;
        var dependents = await pool.query(text3);
        dependents = dependents.rows;
        var pay_roll = await pool.query(text4);
        pay_roll = pay_roll.rows[0];
        var pay_grade = await pool.query(text5);
        pay_grade = pay_grade.rows[0];
        // var toime = await pool.query(text6);
        // console.log(toime);
        res.render("employee/single_employee.ejs",{employee: employee, dependents: dependents, projects: projects, pay_roll: pay_roll, pay_grade: pay_grade});
    }catch(err){
        console.log(err.message)
    }
});

app.get("/departments/:id",async(req, res)=>{
    try{
        const id = req.params.id;
        const text1 = "SELECT * FROM DEPARTMENT WHERE dept_id="+id+";";
        const text2 = "SELECT * FROM PROJECT WHERE dept_id="+id+";";
        var department = await pool.query(text1);
        department = department.rows[0];
        var projects = await pool.query(text2);
        projects = projects.rows;
        res.render("department/single_department.ejs",{department: department, projects: projects});
    }catch(err){
        console.log(err.message)
    }
});

app.get("/projects",async(req, res)=>{
    try{
        const id = req.params.id;
        const text = "SELECT * FROM PROJECT;";
        var data = await pool.query(text);
        data = data.rows;
        res.render("project/index.ejs",{data: data});
    }catch(err){
        console.log(err.message)
    }
});

app.get("/projects/:id",async(req, res)=>{
    try{
        const id = req.params.id;
        const text = "SELECT * FROM PROJECT WHERE p_id="+id+";";
        var project = await pool.query(text);
        project = project.rows[0];
        res.render("project/single_project.ejs",{project: project});
    }catch(err){
        console.log(err.message);
    }
});

app.listen(5000, ()=>{
    console.log("Server has started on port 5000");
});