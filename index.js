const admin = require('firebase-admin');
const express = require('express');
const app = express();

// Firebase service account key
const serviceAccount = require('./path/to/serviceAccountKey.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: 'https://your-project-id.firebaseio.com'
});

app.get('/', (req, res) => {
  res.send('Firebase + Docker + Node.js');
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
