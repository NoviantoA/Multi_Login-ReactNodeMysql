import Product from "../models/ProductModel.js";
import Users from "../models/UserModel.js";
import {Op} from 'sequelize'

// get product
export const getProducts = async (req, res) => {
  try {
    // validasi query login multi user (admin & user)
    let response;
    if (req.role === "admin") {
      response = await Product.findAll({
        // menampilkan data tertentu pada product
        attributes: ['uuid', 'name', 'price'],
        // include user didalam tabel product karena terdapat relasi antara product dengan user
        include: [
          {
            model: Users,
            // menampilkan data tertentu pada user
            attributes: ['name', 'email']
          },
        ],
      });
      // login selain sebagai admin => eksekusi query lain
    } else {
      response = await Product.findAll({
         // menampilkan data tertentu pada product
         attributes: ['uuid', 'name', 'price'],
        where: {
          // show data yang diinput user
          userId: req.userId,
        },
        // include user
        include: [
          {
            model: Users,
             // menampilkan data tertentu pada user
             attributes: ['name', 'email']
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// get product berdasarkan id
export const getProductById = async(req, res) => {
  try {
    // cek id yag dikirimkan oleh user
    const product = await Product.findOne({
      where: {
        // ambil parameter uuid
        uuid: req.params.id
      }
    })
    if(!product) return res.status(404).json({msg: 'Data tidak ditemukan'})
    // validasi query login multi user (admin & user)
    let response;
    if (req.role === "admin") {
      response = await Product.findOne({
        // menampilkan data tertentu pada product
        attributes: ['uuid', 'name', 'price'],
        // include user didalam tabel product karena terdapat relasi antara product dengan user
        where: {
          // jika login sebagai user => set operator kemudian select data berdasarkan id dan user yang sedang login
          [Op.and]: [{id: product.id}, { 
            // select berdasarkan id
            id: product.id}]
        },
        include: [
          {
            model: Users,
            // menampilkan data tertentu pada user
            attributes: ['name', 'email']
          },
        ],
      });
      // login selain sebagai admin => eksekusi query lain
    } else {
      response = await Product.findOne({
         // menampilkan data tertentu pada product
         attributes: ['uuid', 'name', 'price'],
        where: {
          // show data yang diinput user
          userId: req.userId,
        },
        // include user
        include: [
          {
            model: Users,
             // menampilkan data tertentu pada user
             attributes: ['name', 'email']
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// create product
export const createProduct = async(req, res) => {
  // destruct req.body
  const {name, price} = req.body;
  try {
    await Product.create({
      // field tabel
      name: name,
      price: price,
      // user id from middleware
      userId: req.userId
    })
    res.status(201).json({msg: "Product baru sukses ditambahkan"})
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// update product
export const updateProduct = async(req, res) => {
  try {
    // cek id yag dikirimkan oleh user
    const product = await Product.findOne({
      where: {
        // ambil parameter uuid
        uuid: req.params.id
      }
    })
    if(!product) return res.status(404).json({msg: 'Data tidak ditemukan'})
     // destruct req.body
  const {name, price} = req.body;
    if (req.role === "admin") {
      // set query login sebagai admin
      await Product.update({name, price},{
        // update berdasarkan id
        where: {
          id: product.id
        }
      })
    } else {
      if(req.userId !== product.userId) return res.status(403).json({msg: 'Hak akses ditolak'})
       // set query login sebagai user
       await Product.update({name, price},{
        // update berdasarkan id
        where: {
          // jika login sebagai user => set operator kemudian select data berdasarkan id dan user yang sedang login
          [Op.and]: [{id: product.id}, { 
            // select berdasarkan id
            id: product.id}]
        },
      })
    }
    res.status(200).json({msg: 'Product berhasil diupdate'});
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// delete product
export const deleteProduct = async(req, res) => {
  try {
    // cek id yag dikirimkan oleh user
    const product = await Product.findOne({
      where: {
        // ambil parameter uuid
        uuid: req.params.id
      }
    })
    if(!product) return res.status(404).json({msg: 'Data tidak ditemukan'})
     // destruct req.body
  const {name, price} = req.body;
    if (req.role === "admin") {
      // set query login sebagai admin
      await Product.destroy({
        // update berdasarkan id
        where: {
          id: product.id
        }
      })
    } else {
      if(req.userId !== product.userId) return res.status(403).json({msg: 'Hak akses ditolak'})
       // set query login sebagai user
       await Product.destroy({
        // update berdasarkan id
        where: {
          // jika login sebagai user => set operator kemudian select data berdasarkan id dan user yang sedang login
          [Op.and]: [{id: product.id}, { 
            // select berdasarkan id
            id: product.id}]
        },
      })
    }
    res.status(200).json({msg: 'Product berhasil dihapus'});
  } catch (error) {
    res.status(500).json({ msg: error.message });
  } 
};
