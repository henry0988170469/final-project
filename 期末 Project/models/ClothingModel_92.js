const { static } = require('express');
const db = require('../utils/database');

const picture_92 = class picture_92 {
  constructor(id, name, img_title, img_intro, cat_id, img_year, local_url) {
    this.id = id;
    this.name = name;
    this.img_title = img_title;
    this.img_intro = img_intro;
    this.img_year = img_year;
    this.cat_id = cat_id;
    this.local_url = article;
  }

  static FetchPictureByCategory() {
    return db.execute('SELECT * FROM picture_92');
  }

};


// test
// const testFetchHomePage = async (req,res) => {
//     try{
//         await picture_92.FetchPictureByCategory().then(([rows]) => {
//           console.log(JSON.stringify(rows));
//         });
//     } catch (err) {
//       console.log(err);
//     }
// }

// testFetchHomePage();

module.exports = picture_92;