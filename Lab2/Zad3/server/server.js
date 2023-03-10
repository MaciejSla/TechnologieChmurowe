const express = require("express");
const { MongoClient } = require("mongodb");
const app = express();
const port = 8080;

const client = new MongoClient("mongodb://db:27017");

app.get("/", async (req, res) => {
  await client.connect();
  const users = client.db("App").collection("users");
  const userTab = await users.find().toArray();
  console.log(userTab);
  res.send(userTab);
});

app.listen(port, () => {
  console.log(`Success! Your application is running on port ${port}.`);
});
