import jwt from 'jsonwebtoken';
import appConfig from '../config/appConfig.js';

const createNewToken = (data) => {
  const accessToken = jwt.sign(data, appConfig.auth.jwt_secret, {
    expiresIn: appConfig.auth.jwt_expiresin,
  });
  const refreshToken = jwt.sign(data, appConfig.auth.refresh_token_secret, {
    expiresIn: appConfig.auth.refresh_token_expiresin,
  });
  return {
    accessToken,
    refreshToken,
  };
};

const verifyToken = async (token) => {
  try {
    const decoded = jwt.verify(token, appConfig.auth.jwt_secret);
    return decoded;
  } catch (ex) {
    return false;
  }
};


export { createNewToken, verifyToken };