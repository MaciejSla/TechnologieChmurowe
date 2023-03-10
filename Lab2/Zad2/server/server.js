const express = require("express");
const app = express();
const port = 8080;

app.get("/", (req, res) => {
  res.json(new Date().toJSON());
});

app.listen(port, () => {
  console.log(`Success! Your application is running on port ${port}.`);
});
