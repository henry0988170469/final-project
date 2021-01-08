const picture_92 = require('../models/ClothingModel_92');

exports.getPictureByCategory = async (req, res) => {
  let data = {};
  try {

    await picture_92.FetchPictureByCategory(data).then(([rows]) => {
      // console.log(JSON.stringify(rows));
      data.picture = rows;
      // res.json(rows);
    });
  } catch (err) {
    console.log(err);
  }

  res.render('bootstrap_92', {
    data: data.picture,
  });
};