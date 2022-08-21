import User from "../models/UserModel.js";

export const verifyUser = async (req, res, next) => {
  if (!req.session.userId) {
    return res.status(401).json({ msg: "Mohon login terlebih dahulu" });
  }
  // terdapat session => ambil user ke database
  const user = await User.findOne({
    // cari data berdasarkan
    where: {
      uuid: req.session.userId,
    },
  });
  // validasi
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  //   set variabel agar bisa diakses ke setiap controller
  req.userId = user.id;
  req.role = user.role;
  next();
};

// get, update, delete hanya bisa dilakukan oleh admin
export const adminOnly = async (req, res, next) => {
  // terdapat session => ambil user ke database
  const user = await User.findOne({
    // cari data berdasarkan
    where: {
      uuid: req.session.userId,
    },
  });
  // validasi
  if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
  // validasi role admin
  if (user.role !== "admin")
    return res.status(403).json({ msg: "Hak akses ditolak" });
  next();
};
