import sequelize from "sequelize";

// membuat database
const db = new sequelize("multi_login", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
