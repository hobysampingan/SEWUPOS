<?php
/**
 * Reset Password - HAPUS FILE INI SETELAH DIGUNAKAN!
 */
require_once 'config.php';

$newPassword = 'admin123';
$hash = password_hash($newPassword, PASSWORD_DEFAULT);

// Update password
$stmt = $pdo->prepare("UPDATE users SET password = ? WHERE username = 'admin'");
$result = $stmt->execute([$hash]);

if ($result) {
    echo "<h2>✅ Password berhasil direset!</h2>";
    echo "<p><strong>Username:</strong> admin</p>";
    echo "<p><strong>Password:</strong> admin123</p>";
    echo "<br><a href='login.php'>Klik di sini untuk Login</a>";
    echo "<br><br><p style='color:red;'>⚠️ HAPUS FILE INI SETELAH LOGIN!</p>";
} else {
    echo "<h2>❌ Gagal reset password</h2>";
}
