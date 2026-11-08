#!/usr/bin/env bash
# ==============================================================================
# 气泡自动化 (何老师专属定制版) 构建与打包脚本
# ==============================================================================
set -e

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_SRC="$PROJECT_ROOT/app_src"
OUTPUT_DIR="$PROJECT_ROOT/dist"
OUTPUT_APK="$OUTPUT_DIR/qipao_he_laoshi_v106.apk"
KEYSTORE="$PROJECT_ROOT/release.keystore"
KEY_ALIAS="qipao"
KEY_PASS="123456"

echo "=========================================================="
echo "  🚀 气泡自动化 (何老师定制版) 开始构建"
echo "=========================================================="

# 1. 检查依赖工具
command -v apktool >/dev/null 2>&1 || { echo "❌ 错误: 未安装 apktool，请先安装: brew install apktool"; exit 1; }

# 设置 Java 路径（若有 openjdk@17 则优先使用）
if [ -x "/opt/homebrew/opt/openjdk@17/bin/jarsigner" ]; then
    JARSIGNER="/opt/homebrew/opt/openjdk@17/bin/jarsigner"
    KEYTOOL="/opt/homebrew/opt/openjdk@17/bin/keytool"
elif command -v jarsigner >/dev/null 2>&1; then
    JARSIGNER="jarsigner"
    KEYTOOL="keytool"
else
    echo "❌ 错误: 未找到 jarsigner，请安装 JDK 17+"; exit 1
fi

mkdir -p "$OUTPUT_DIR"

# 2. 生成临时签名密钥（若不存在）
if [ ! -f "$KEYSTORE" ]; then
    echo "🔑 生成本地签名密钥库: $KEYSTORE ..."
    "$KEYTOOL" -genkey -v -keystore "$KEYSTORE" -alias "$KEY_ALIAS" \
        -keyalg RSA -keysize 2048 -validity 10000 \
        -storepass "$KEY_PASS" -keypass "$KEY_PASS" \
        -dname "CN=HeLaoShi, OU=Custom, O=QipaoAuto, L=Beijing, ST=Beijing, C=CN"
fi

# 3. 使用 apktool 回编译工程
echo "📦 [1/2] 正在回编译 APK 资源与 DEX 代码..."
apktool b "$APP_SRC" -o "$OUTPUT_APK"

# 4. 执行签名
echo "✍️  [2/2] 正在进行 APK 签名..."
"$JARSIGNER" -verbose -sigalg SHA256withRSA -digestalg SHA-256 \
    -keystore "$KEYSTORE" -storepass "$KEY_PASS" -keypass "$KEY_PASS" \
    "$OUTPUT_APK" "$KEY_ALIAS" >/dev/null

echo "=========================================================="
echo "  ✅ 构建成功！"
echo "  📁 目标 APK 路径: $OUTPUT_APK"
echo "=========================================================="
