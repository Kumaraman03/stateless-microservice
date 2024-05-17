const express = require('express');
const jwt = require('jsonwebtoken');
const {  
    createpool 
} = require('mysql'); // Assumes you have a connection pool set up with mysql2

const pool = createpool({
    host: "localhost",
    port: "3306",
    user: "root",
    password: "Mysql@123",
    connectionLimit: 100

})
const router = express.Router();

// Middleware to verify JWT token
const authenticateToken = (req, res, next) => {
  const token = req.headers
}