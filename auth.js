const express = require('express');
const jwt = require('jsonwebtoken');

const router = express.Router();

router.post('/login', (req, res) => {
  const { username, password } = req.body;

  // Perform password comparison (You should use a proper authentication mechanism)
  if (username && password) {
    const token = jwt.sign({ username, role: 'teacher' }, 'secret-key', { expiresIn: '1h' });

    res.json({ token });
  } else {
    res.status(401).json({ error: 'Invalid credentials' });
  }
});

module.exports = router;
