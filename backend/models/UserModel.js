import sequelize from "sequelize";
import db from "../config/Database.js";

// destruct datatype
const dataTypes = sequelize;

// create tabel
const Users = db.define(
  "users",
  {
    // field
    uuid: {
      type: dataTypes.STRING,
      defaultValue: dataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    name: {
      type: dataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
        //   set jumlah karakter
        len: [3, 100],
      },
    },
    email: {
      type: dataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
        isEmail: true,
      },
    },
    password: {
      type: dataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    role: {
      type: dataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    // opsi
    freezeTableName: true,
  }
);

export default Users;
