import express from "express";
import {
  getUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser,
} from "../controller/Users.js";
import { verifyUser, adminOnly } from "../middleware/AuthUser.js";

const router = express.Router();

// reate router
// get user
router.get(
  "/users",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  adminOnly,
  getUsers
);
// get user by id
router.get(
  "/users/:id",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  adminOnly,
  getUserById
);
// buat user baru
router.post(
  "/users",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  adminOnly,
  createUser
);
// update user
router.patch(
  "/users/:id",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  adminOnly,
  updateUser
);
// delete user
router.delete(
  "/users/:id",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  adminOnly,
  deleteUser
);

export default router;
