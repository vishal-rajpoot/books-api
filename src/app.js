import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import methodOverride from 'method-override';
import apis from './apis/index.js';
import methodNotFound from './middlewares/notFound.js';

const app = express();

app.use(bodyParser.json({ limit: '50mb', extended: true }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(methodOverride());
app.use(
  cors({
    origin: '*',
  })
);
app.use(express.json());

app.use(apis);
app.use(methodNotFound);


export default app;
