const app = require("express")();

/**
 * Restricted Route
 */
app.use("/", (req, res) => {
  res.json({ status: "hidden and alive" });
});
/**
 * Public Route
 */
app.use("/status", (req, res) => {
  res.json({ status: "alive" });
});

app.listen(3000, () => {
  console.log("listening on http://localhost:3000");
});
