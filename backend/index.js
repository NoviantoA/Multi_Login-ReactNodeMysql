import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import UserRoute from "./routes/UserRoute.js";
import ProductRoute from "./routes/ProductRoute.js";
// import database agar tergenerate secara otomatis
import db from "./config/Database.js";
import AuthRoute from "./routes/AuthRoute.js";
import SequelizeStore from "connect-session-sequelize";

// call function dotenv
dotenv.config();

// membuat side server (express)
const app = express();
const PORT = 5000;
const sessionStore = SequelizeStore(session.Store);

const store = new sessionStore({
  // database
  db: db,
});

// set database
// (async () => {
//   await db.sync();
// })();

// set session
app.use(
  session({
    // ambil secret dari dotenv
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: true,
    // set session sequelize
    store: store,
    cookie: {
      // set secure apabila menggunakan http/ https
      secure: "auto",
    },
  })
);

// table session database
// store.sync();

// middleware cors
app.use(
  cors({
    Credentials: true,
    // domain yang diizinkan untuk mengakses api
    origin: ["http://localhost:3000", '"http://localhost:8080"'],
  })
);

// menerima data dalam format json
app.use(express.json());

// set user & product route sebagai middleware
app.use(UserRoute);
app.use(ProductRoute);
// route auth
app.use(AuthRoute);

app.listen(PORT, function () {
  console.log(`Aplikasi berjalan di port ${PORT}`);
});
