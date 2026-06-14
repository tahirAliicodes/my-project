# 🔐 Encryption & Decryption App

> A Flutter mobile application that encrypts and decrypts text messages using a key-based cipher, featuring a clean dark blue UI.

---

## 📱 Screenshots

> *Add your app screenshots here*

---

## ✨ Features

- ✅ **Text Encryption** — encrypt any message instantly
- ✅ **Text Decryption** — decrypt encrypted messages back to original
- ✅ **Show/Hide Message** — toggle message visibility with eye icon
- ✅ **Dark Blue Theme** — clean, modern dark UI
- ✅ **Simple Interface** — easy to use for everyone

---

## 🛠️ Technologies Used

- [Flutter](https://flutter.dev/) — cross-platform mobile framework
- [Dart](https://dart.dev/) — programming language
- Material Design — UI components

---

## 🔒 How Encryption Works

The app uses a **key-based character shift cipher**:

- Each character in the message is shifted by the value of the corresponding key character
- The key used is `secretkey`
- **Encrypt:** `charCode = message[i] + key[i % key.length]`
- **Decrypt:** `charCode = encrypted[i] - key[i % key.length]`

### Example:
| Step | Value |
|------|-------|
| Original Message | `Hello` |
| After Encryption | `(shifted characters)` |
| After Decryption | `Hello` ✅ |

---

## 📦 Installation

### 1. Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/flutter-encryption-app.git
cd flutter-encryption-app
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Run the app
```bash
flutter run
```

---

## 📁 Project Structure

```
lib/
├── main.dart       # Main app with encryption/decryption logic
└── colors.dart     # App theme and color configuration
```

---

## 🚀 How to Use

1. **Open** the app
2. **Type** your message in the text field
3. Tap 👁️ icon to **show/hide** your message
4. Press **"Encrypt"** to encrypt your message
5. Press **"Decrypt"** to decrypt it back
6. Result appears below the buttons

---

## ⚠️ Note

> This app uses a simple key-based cipher for **educational purposes**. For production apps requiring real security, use industry-standard encryption like **AES** via the `encrypt` Flutter package.

---

## 🤝 Contributing

Pull requests are welcome! Feel free to improve the encryption algorithm or UI.

---

## 📄 License

This project is open source and available for educational use.
