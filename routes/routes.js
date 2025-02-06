import { Router } from 'express';
import { getUser } from '../controllers/GetUser.js';
import { createUser } from '../controllers/CreateUser.js';
import { deleteUser } from '../controllers/DeleteUser.js';

const routes = Router();

routes.get('/user', getUser);
routes.post('/user', createUser);
routes.delete('/user/:id', deleteUser);

export default routes;