import sequelize from "sequelize";
import db from "../config/Database.js";
import Users from "./UserModel.js";

// destruct datatype
const dataTypes = sequelize;

// create tabel
const Products = db.define(
  "products",
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
    price: {
      type: dataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    // userId memiliki relasi dengan tabel user
    userId: {
      type: dataTypes.INTEGER,
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

// relasi field userId (one to many)
Users.hasMany(Products);
Products.belongsTo(Users, { foreignKey: "userId" });

export default Products;
