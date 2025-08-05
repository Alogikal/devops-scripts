#!/bin/bash

echo "✅ Ежедневный отчёт: $(date)"
echo "Пользователь: $(whoami)"
echo ""

echo "📊 Память:"
free -h | grep "Mem" | awk '{print "Всего: " $2 ", Свободно: " $4}'
echo ""

echo "💾 Диск:"
df -h / | grep "/" | awk '{print "Корневая файловая система: " $5 " занято"}'
echo ""

echo "⏱ Загрузка системы:"
uptime
echo ""

echo "🌐 Сеть:"
hostname -I | xargs echo "IP-адрес: "
