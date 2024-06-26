import http from 'http';
import app from './src/app.js';
import { initializeDbConnection } from './src/middlewares/db.js';

const server = http.createServer(app);
const PORT = process.env.PORT || 8080;

initializeDbConnection();

app.listen(PORT, () => {
  console.log(`Server is running on port: ${PORT}`);
});
