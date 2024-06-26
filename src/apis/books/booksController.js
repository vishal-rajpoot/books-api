import { sendError, sendSuccess } from "../../middlewares/messages.js";
import { addBookService, getAllBooksService } from "./booksService.js";

const getAllBooks = async (req, res) => {
  try {
    const { userId } = req.user;
    const data = await getAllBooksService(userId);
    if (!data.success) {
      return sendError(res, data.status, data.message);
    }
    return sendSuccess(res, data?.data, "getting books successfully");
  } catch (error) {
    return sendError(res, 500, error.message);
  }
};

const addBook = async (req, res) => {
  try {
    const { userId } = req.user;
    const { title, author } = req.body;
    const data = await addBookService(userId, title, author);
    if (!data.success) {
      return sendError(res, data.status, data.message);
    }
    return sendSuccess(res, data?.data, "book added successfully");
  } catch (error) {
    return sendError(res, 500, error);

  }
};

export { getAllBooks, addBook };
