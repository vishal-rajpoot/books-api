import * as db from "../../middlewares/db.js";
import { addBookDao, getAllBooksDao } from "./booksDao.js";

const getAllBooksService = async (userId) => {
  let conn;
  try {
    conn = await db.fetchConn();
    const data = await getAllBooksDao(conn);
    return { success: true, data: data };
  } catch (error) {
    return {
      success: false,
      status: 500,
      message: "error while getting books",
    };
  } finally {
    if (conn) conn.end();
  }
};

const addBookService = async (userId, title, author) => {
  let conn;
  try {
    conn = await db.fetchConn();
    const data = await addBookDao(conn, userId, title, author);
    return { success: true, data };
  } catch (error) {
    return {
      success: false,
      status: 500,
      message: "error while adding new book",
    };
  } finally {
    if (conn) conn.end();
  }
};

export { getAllBooksService, addBookService };
