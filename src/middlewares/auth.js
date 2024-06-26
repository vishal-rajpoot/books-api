import jwt from 'jsonwebtoken';
import appConfig from '../config/appConfig.js';

const logoutSet = new Set();

const isAuthunticated = (req, res, next) => {
  const token = req.header('Authorization');

  if (!token) {
    return res.status(401).json({ error: 'Authorization denied, token not found' });
  }

  if (logoutSet.has(token)) {
    return res.status(402).json({ error: 'Token expired or User logged out.' });
  }

  try {
    const decoded = jwt.verify(token, appConfig.auth.jwt_secret);
    req.user = decoded;
    next();
  } catch (error) {
    return res.status(403).json({ error: 'Invalid Token' });

  }
};

export { isAuthunticated, logoutSet };
