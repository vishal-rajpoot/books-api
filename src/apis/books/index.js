import express from 'express';
import { isAuthunticated } from '../../middlewares/auth.js';
import { addBook, getAllBooks } from './booksController.js';

const router = express.Router();

router.get('/', isAuthunticated, getAllBooks);
router.post('/', isAuthunticated, addBook);


export default router;
