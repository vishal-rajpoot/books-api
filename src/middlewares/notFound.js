const methodNotFound = (req, res, next) => {
    const err = new Error('Not Found');
    err.status = 404;
    res.status(err.status).json({
      type: 'error',
      message: 'the url you are trying to reach is not hosted on our server',
    });
    next(err);
};

  export default methodNotFound;