import express from 'express';
import authRoutes from './routes/auth.routes.js';
import dotenv from 'dotenv';
import connectMongoDB from './db/connectMongoDB.js';
import cookieParser from 'cookie-parser';

dotenv.config(); // Load environment variables from .env file

const app = express();
const PORT = process.env.PORT || 1234;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());
app.use('/api/auth', authRoutes);

app.listen(PORT, () => {
  console.log(`Server running on ${PORT}!`);
  connectMongoDB();
});
