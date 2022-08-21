import User from "../models/UserModel.js";
// hash password menggunakan argon
import argon2 from "argon2";

// get User
export const getUsers = async (req, res) => {
  try {
    const response = await User.findAll({
      // menampilkan atribut tertentu
      attributes: ["uuid", "name", "email", "role"],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// get User berdasarkan id
export const getUserById = async (req, res) => {
  try {
    const response = await User.findOne({
      // menampilkan atribut tertentu
      attributes: ["uuid", "name", "email", "role"],
      // option
      where: {
        uuid: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// create User
export const createUser = async (req, res) => {
  // distract req body
  const { name, email, password, confirmPassword, role } = req.body;
  // validasi
  if (password !== confirmPassword)
    return res
      .status(400)
      .json({ msg: "Password dan confirm password tidak sesuai" });
  //   hash passwprd ketika sesuai dengan confirm password
  const hashPassword = await argon2.hash(password);
  try {
    // insert data ke database
    await User.create({
      name: name,
      email: email,
      password: hashPassword,
      role: role,
    });
    res.status(201).json({ msg: "Register berhasil" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};
// update User
export const updateUser = async (req, res) => {
  const user = await User.findOne({
    // option
    where: {
      uuid: req.params.id,
    },
  });
  // validasi
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  // jika user ditemukan
  const { name, email, password, confirmPassword, role } = req.body;
  // validasi user
  let hashPassword;
  // jika user mengirimkan password
  if (password === "" || password === null) {
    // mengambil password dari user di database
    hashPassword = user.password;
  } else {
    // update password => hash
    hashPassword = await argon2.has(password);
  }
  // validasi password
  if (password !== confirmPassword)
    return res
      .status(400)
      .json({ msg: "Password dan confirm password tidak sesuai" });

  // validasi berhasil => update data
  try {
    // insert data ke database
    await User.update(
      {
        name: name,
        email: email,
        password: hashPassword,
        role: role,
      }, // update berdasarkan id
      {
        where: {
          id: user.id,
        },
      }
    );
    res.status(200).json({ msg: "Data user berhasil diupdate" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};
// delete User
export const deleteUser = async (req, res) => {
  const user = await User.findOne({
    // option
    where: {
      uuid: req.params.id,
    },
  });
  // validasi
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  // jika user ditemukan
  try {
    // insert data ke database
    await User.destroy(
      // delete berdasarkan id
      {
        where: {
          id: user.id,
        },
      }
    );
    res.status(200).json({ msg: "Data user berhasil dihapus" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};
