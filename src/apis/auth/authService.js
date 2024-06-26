import * as db from "../../middlewares/db.js";
import * as authUtils from '../../middlewares/jwt.js';
// import bcrypt from 'bcryptjs';
import { addLoginDao, addUserDao, getUserbyEmailDao, getUsersDao } from "./authDao.js";

const doLogin = async (requestBody) => {
  const { email, password } = requestBody;
  let conn;

  try {
    conn = await db.fetchConn();
    const data = await getUserbyEmailDao(conn, email);

    if (!data) {
      return { success: false, status: 404, message: "User does not exist" };
    }

    if (password !== data.password) {
      return { success: false, status: 403, message: "Invalid credentials" };
    }

    const loginData = await addLoginDao(
      conn,
      data.id,
    );

    const tokenInfo = authUtils.createNewToken({
      email: data.email,
      userId: data.id,
      loginId: loginData?.id,
    });

    return { success: true, data: tokenInfo };
  } catch (err) {
    return {
      success: false,
      status: 500,
      message: "Error while logging in user",
    };
  } finally {
    if (conn) conn.end();
  }
};

const addUserService = async (payload, res) => {
  let conn;

  try {
    conn = await db.fetchConn();
    await conn.beginTransaction();
    const allUsers = await getUsersDao(conn);

    if (allUsers?.some((user) => user.email === payload.email)) {
      return {
        success: false,
        status: 403,
        message: "User already exists with the same email",
      };
    }
    const data = await addUserDao(conn, payload);
    await conn.commit();
    return { success: true, data };
  } catch (error) {
    if (conn) await conn.rollback();
    return {
      success: false,
      status: 500,
      message: `Error while adding new user: ${error.message}`,
    };
  } finally {
    if (conn) conn.end();
  }
};

export { doLogin, addUserService };
