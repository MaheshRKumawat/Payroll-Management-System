const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

app.use(cors());
app.use(express.json());

app.get("/",async(req, res)=>{
    try{
        res.render("index.ejs");
        // console.log(data.rows);
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
        // console.log(data.rows);
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
        // console.log(data);
    }catch(err){
        console.log(err.message)
    }
});

app.get("/employees/:id",async(req, res)=>{
    try{
        const id = req.params.id;
        const text1 = "SELECT * FROM EMPLOYEE WHERE emp_id="+id+";";
        const text2 = "SELECT * FROM WORKS_ON WHERE emp_id="+id+";";
        const text3 = "SELECT * FROM DEPENDENTS WHERE emp_id="+id+";";
        var employee = await pool.query(text1);
        employee = employee.rows[0];
        var projects = await pool.query(text2);
        projects = projects.rows;
        var dependents = await pool.query(text3);
        dependents = dependents.rows;
        res.render("employee/single_employee.ejs",{employee: employee, dependents: dependents, projects: projects});
        // console.log(dependents);
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
        // console.log(projects);
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
        console.log(err.message)
    }
});

app.use(express.static(__dirname + "/views"));
// app.use('/', express.static('views'));
app.set("view engine","ejs");

app.listen(5000, ()=>{
    console.log("Server has started on port 5000");
});