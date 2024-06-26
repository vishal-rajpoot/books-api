import { v4 } from 'uuid';

const generateUUID = () => v4();

const getUserbyEmailDao = async (conn, email) => {
    const sql = `select * from users where email = '${email}'`;
    const data = await conn.query(sql);
    if (data) {
      return data[0];
    }
    return undefined;
  };

  const getUsersDao = async (conn) => {
    const sql = `select * from users`;
    const data = await conn.query(sql);
    if (data) {
      return data;
    }
    return undefined;
  };

const addLoginDao = async (conn, userId) => {
    const id = generateUUID();
    const sql = `insert into login (id, user)
      values('${id}','${userId}') RETURNING login.id`;
    const data = await conn.query(sql);
    if (data && data[0]) {
      return data[0];
    }
    return undefined;
  };

const addUserDao = async (conn, payload) => {
    const id = generateUUID();
    const sql = `INSERT INTO users(id, first_name, last_name, email, password)
      values ('${id}', '${payload.first_name}', '${payload.last_name}', '${payload.email}', '${payload.password}')
      RETURNING users.id`;
    const data = await conn.query(sql);
    if (data && data[0]) {
      return data;
    }
    return undefined;
};

export { getUserbyEmailDao, addLoginDao, addUserDao, getUsersDao }
