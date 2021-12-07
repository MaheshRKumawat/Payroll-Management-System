const Pool = require("pg").Pool;

const pool = new Pool({
    user: "postgres",
    password: "044440",
    host: "localhost",
    port: 5432,
    database: "payroll"
});

module.exports = pool;