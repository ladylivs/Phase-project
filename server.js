const express = require('express');
const app = express();
const pgp = require("pg-promise")(/*options*/);
const db = pgp('postgres://postgres:pass@localhost:5432/readingrainbow');

// install ejs? 

app.set("view engine", "ejs");

app.get("/", async (req, res) => {
    await db.manyOrNone('SELECT * FROM public.books ORDER BY title ASC')
        .then((data) => {
            //console.log(data);
            res.render("books", {data: data});
        })
        .catch((error) => {
            console.log('ERROR:', error)
        })
});


app.listen(3000, () => {
    console.log("server running on 3000")
});