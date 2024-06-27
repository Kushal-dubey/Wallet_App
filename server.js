const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.json());

// Create Wallet
app.post('/create-wallet', (req, res) => {
  const { userId, balance } = req.body;
  res.json({ message: `Wallet created for ${userId} with balance ${balance}` });
});

// Transfer Balance
app.post('/transfer-balance', (req, res) => {
  const { fromUserId, toUserId, amount } = req.body;
  res.json({ message: `Transferred ${amount} from ${fromUserId} to ${toUserId}` });
});

// Retrieve Balance
app.get('/balance/:userId', (req, res) => {
  const { userId } = req.params;
  res.json({ message: `Balance for ${userId} is 100` });
});

// Airdrop Request
app.post('/airdrop', (req, res) => {
  const { userId, amount } = req.body;
  res.json({ message: `Airdropped ${amount} to ${userId}` });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
