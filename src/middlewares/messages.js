const sendSuccess = (res, data, message) => {
  res.status(200).json({
    status: 200,
    success: true,
    message,
    data,
  });
};

const sendError = (res, statusCode = 500, message) => {
  res.status(statusCode).json({
    status : statusCode,
    success: false,
    message,
  });
};

export { sendSuccess, sendError };
