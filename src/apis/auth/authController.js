import { sendError, sendSuccess } from "../../middlewares/messages.js";
import {
  INSERT_AUTH_SCHEMA,
  INSERT_USER_SCHEMA,
} from "../../schemas/authSchema.js";
import { addUserService, doLogin } from "./authService.js";

const login = async (req, res) => {
  try {
    const reqBody = req.body;
    const options = { abortEarly: false };
    const joiValidation = INSERT_AUTH_SCHEMA.validate(reqBody, options);
    if (joiValidation.error) {
      return sendError(res, 400, joiValidation.error);
    }
    const data = await doLogin(reqBody, res);

    if (!data.success) {
      return sendError(res, data.status, data.message);
    }
    return sendSuccess(res, data?.data, "Login successfully");
  } catch (error) {
    return sendError(res, 500, error.message);
  }
};

const register = async (req, res) => {
  try {
    const payload = req.body;
    const options = { abortEarly: false };
    const joiValidation = INSERT_USER_SCHEMA.validate(payload, options);
    if (joiValidation.error) {
      return sendError(res, 400, joiValidation.error);
    }
    const data = await addUserService(payload, res);
    if (!data.success) {
      return sendError(res, data.status, data.message);
    }
    return sendSuccess(res, data?.message, "User registered successfully");
  } catch (error) {
    return sendError(res, 500, error.message);
  }
};

export { login, register };
