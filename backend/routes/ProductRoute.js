import express from "express";
import {
  getProducts,
  getProductById,
  createProduct,
  updateProduct,
  deleteProduct,
} from "../controller/Products.js";
import { verifyUser } from "../middleware/AuthUser.js";

const router = express.Router();

// reate router
// get product
router.get(
  "/products",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  getProducts
);
// get product by id
router.get(
  "/products/:id",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  getProductById
);
// buat product baru
router.post(
  "/products",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  createProduct
);
// update product
router.patch(
  "/products/:id",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  updateProduct
);
// delete product
router.delete(
  "/products/:id",
  // pharsing verifyUser sebagai middleware (tidak bisa mengakses user jika belum login)
  verifyUser,
  deleteProduct
);

export default router;
