import express from 'express';
import books from './books/index.js';
import auth from './auth/index.js';

const router = express.Router();

router.use('/books', books);
router.use('/auth', auth);

const parentRouter = express.Router();
parentRouter.use('/api', router);

export default parentRouter;
