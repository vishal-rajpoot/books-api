import { v4 } from "uuid";

const generateUUID = () => v4();

const getAllBooksDao = async (conn) => {
  const sql = `SELECT b.id, b.title, b.author, 
  CONCAT(u.first_name, ' ', u.last_name) as created_by,
  b.created_at
  FROM Books as b
  JOIN users as u ON b.user = u.id
  order by b.updated_at DESC`;
  const data = await conn.query(sql);
  if (data) {
    return data;
  }
  return undefined;
};

const addBookDao = async (conn, userId, title, author) => {
  const id = generateUUID();
  const sql = `INSERT INTO books (id, title, author, user) VALUES ( '${id}', '${title}', '${author}', '${userId}')`;
  const data = await conn.query(sql);
  if (data) {
    return data.affectedRows;
  }
  return undefined;
};

export { getAllBooksDao, addBookDao };
