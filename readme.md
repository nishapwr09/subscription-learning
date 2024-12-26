# Blockchain-Powered Subscription Learning Platform

## Overview
A decentralized platform for creating, subscribing to, and managing online learning courses using blockchain technology. This project demonstrates a Web3 application with smart contract integration for course management.

## 🚀 Features
- Decentralized course creation
- Blockchain-based subscription management
- Transparent course pricing
- Secure course access control
- Web3 wallet integration

## 📋 Prerequisites
- Metamask or Web3-compatible wallet
- A Web3-enabled browser
- Solidity-compatible blockchain (Ethereum, Polygon, etc.)
- Basic understanding of blockchain concepts

## 🛠️ Technology Stack
- **Blockchain**: Solidity Smart Contract
- **Frontend**: HTML, CSS, JavaScript
- **Web3 Library**: Web3.js
- **Blockchain Interaction**: MetaMask

## 🔧 Setup and Installation

### Smart Contract Deployment
1. Open Remix IDE (https://remix.ethereum.org/)
2. Create a new Solidity file
3. Paste the `SubscriptionBasedLearning.sol` contract
4. Compile the contract
5. Deploy to your chosen network
6. Copy the deployed contract address

### Frontend Setup
1. Clone the repository
2. Open the `index.html` file
3. Replace `contractAddress` with your deployed contract address
4. Update `contractABI` with the full ABI from Remix

### Wallet Configuration
1. Install MetaMask browser extension
2. Connect to the same network as your contract
3. Ensure you have sufficient gas tokens

## 💡 How It Works

### Course Creators
1. Connect Web3 wallet
2. Create a course by specifying:
   - Course price
   - Course duration
3. Receive a unique course ID

### Students
1. Browse available courses
2. Select a course
3. Pay the course fee
4. Receive time-limited course access

## 🔐 Smart Contract Functions
- `createCourse()`: Create new learning courses
- `subscribeToCourse()`: Subscribe to a specific course
- `isSubscriptionActive()`: Check current subscription status

## ⚠️ Security Considerations
- Contract uses basic access control
- Recommends additional security audits for production
- Implement more robust access management for enterprise use

## 📊 Gas Optimization
- Minimized storage operations
- Efficient mapping usage
- Reduced computational complexity

## 🔮 Future Roadmap
- Multi-instructor support
- Rating and review system
- Advanced access control
- Tokenized learning credentials

## 💻 Development
### Local Development
```bash
# Clone the repository
git clone https://github.com/yourusername/subscription-learning-platform.git

# Open index.html in a Web3 browser
```

## 📜 License
MIT License

## 🤝 Contributing
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 🌟 Support
Star the repository if you find it useful! For issues, please open a GitHub issue.
