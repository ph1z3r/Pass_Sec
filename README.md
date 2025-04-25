# 🔐 Pass_Sec - Secure Password Manager

Pass_Sec is a secure and lightweight password manager built using **Python Flask**, **PostgreSQL**, and **AES-GCM encryption**. It enables safe storage and retrieval of passwords through an intuitive web interface.

---

## 🚀 Features

- 🛡️ AES-GCM encryption with PBKDF2 key derivation
- 🔐 Secure user authentication
- 🔑 Encrypted password storage and retrieval
- 🧬 Strong password generator
- 🌐 Responsive UI built with Bootstrap
- 🗃️ PostgreSQL with SQLAlchemy ORM

---

## 🛠️ Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/ph1z3r/Pass_Sec.git
cd Pass_Sec
```

### 2. Install Dependencies

Ensure Python 3.8 or higher is installed. Then, install the required packages:

```bash
pip install -r requirements.txt
```

### 3. Run the Application

```bash
python main.py
```

Flask will start the server at:

```
http://127.0.0.1:5000
```

---

## 💡 How It Works

- Users sign up and log in using a master password.
- Passwords are encrypted before storing in the database using AES-GCM.
- Decryption requires the user’s correct credentials.
- Sessions are securely managed with Flask's session handling.

---

## 🧪 Tech Stack

- **Backend**: Python Flask
- **Database**: SQLite
- **Encryption**: AES-GCM, PBKDF2
- **Frontend**: HTML, Bootstrap

---

## 📬 Contribution

Developed By Yash Maheshwari



---

> ⚠️ **Note**: Always use strong, unique master passwords. This app is meant for educational purposes and should be audited before real-world deployment.
