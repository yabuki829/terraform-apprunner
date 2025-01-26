const express = require("express");
const app = express();

const PORT = 3000;
app.get("/", (req, res) => {
    const json = {
        "title": "apprunner_terraform",
        "status": "200",
        "results": {
            "message": "Hello World"
        }
    }
    res.json(json);
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
    console.log(`http://localhost:${PORT}`);
});
