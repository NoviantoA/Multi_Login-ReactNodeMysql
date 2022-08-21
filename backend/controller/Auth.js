import User from "../models/UserModel.js";
import argon2 from "argon2";

// login
export const Login = async (req, res) => {
  const user = await User.findOne({
    // cari data berdasarkan
    where: {
      email: req.body.email,
    },
  });
  // validasi
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  //   verifikasi password yang terdapat di database
  const match = await argon2.verify(
    // password yang terdapat di database
    user.password,
    // password yang dikirimkan oleh user
    req.body.password
  );
  //   validasi password
  if (!match)
    return res.status(400).json({ msg: "Password yang anda masukan salah" });
  // password sesuai
  req.session.userId = user.uuid;
  //   response ketika password sesuai
  const uuid = user.uuid;
  const name = user.name;
  const email = user.email;
  const role = user.role;
  res.status(200).json(
    // pharsing response
    { uuid, name, email, role }
  );
};

// get user login
export const Me = async (req, res) => {
  if (!req.session.userId) {
    return res.status(401).json({ msg: "Mohon login terlebih dahulu" });
  }
  // terdapat session => ambil user ke database
  const user = await User.findOne({
    // hidden password dan menampilkan data tertentu
    attributes: ["uuid", "name", "email", "role"],
    // cari data berdasarkan
    where: {
      uuid: req.session.userId,
    },
  });
  // validasi
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  res.status(200).json(user);
};

export const logOut = (req, res) => {
  // delete session
  req.session.destroy((err) => {
    if (err) return res.status(400).json({ msg: "Tidak dapat logout" });
    res.status(200).json({ msg: "Anda telah logout" });
  });
};
