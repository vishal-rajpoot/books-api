import Joi from 'joi';

const INSERT_AUTH_SCHEMA = Joi.object({
  email: Joi.string().label('Email').required(),
  password: Joi.string().label('Password').required(),
});

const INSERT_USER_SCHEMA = Joi.object({
  first_name: Joi.string().label('First Name').required(),
  last_name: Joi.string().label('Last Name').required(),
  email: Joi.string().label('Email').required(),
  password: Joi.string().label('Password').required(),
});

export { INSERT_AUTH_SCHEMA, INSERT_USER_SCHEMA };
