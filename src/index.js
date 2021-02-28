const express = require('express');
const app = express();
const port = 3000;

// middlewares
app.use(express.json());
app.use(express.urlencoded({extended: false}));

//Rotas
app.use(require('./routes/index'));


app.listen(port, (erro) => {
    if (erro) {
      console.log("Ocorreu um erro");
    } else {
      console.log(`Servidor rodando em: http://localhost:${port}`);
    }
  });
