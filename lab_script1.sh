#!/bin/bash
echo "НАЧАЛО ЧАСТИ 1"

cd ~
mkdir lab0
cd ~/lab0

git init
git branch -M main

mkdir victor
mkdir victor/kitchen
mkdir victor/pastry
mkdir victor/hall
mkdir victor/reception
mkdir victor/management
mkdir archive
mkdir claude_monet

cat > victor/kitchen/barinov_plan <<'EOF'
Баринов проверяет кухню ресторана Victor
Лёва распределяет поваров по рабочим местам
Новое меню готовят к вечернему открытию
EOF

cat > victor/kitchen/max_dish <<'EOF'
Макс предлагает утку с новым соусом
Баринов разрешает приготовить пробную порцию
Блюдо подадут первым гостям ресторана Victor
EOF

cat > victor/pastry/katya_dessert <<'EOF'
Катя готовит шоколадный десерт
Украшение собирают перед самой подачей
Элеонора ждёт результат дегустации
EOF

cat > victor/hall/opening_tables <<'EOF'
Первый стол оставлен для Элеоноры
Второй стол подготовлен для Нагиева
Большой стол займёт команда ресторана
EOF

cat > victor/hall/guest_list <<'EOF'
Элеонора Андреевна прибывает к открытию
Дмитрий Нагиев приглашён на ужин
Денис выступает для гостей вечером
EOF

cat > victor/reception/reservations <<'EOF'
Столик четыре забронирован на семь часов
Столик шесть нужен постоянным гостям
Вика подтверждает каждую бронь
EOF

cat > victor/management/eleonora_order <<'EOF'
Элеонора требует закончить подготовку вовремя
Зал должен быть готов до приезда гостей
Баринов лично представляет праздничное меню
EOF

cat > victor/management/vika_schedule <<'EOF'
Утром проверить работу кухни
Днём провести собрание официантов
Вечером встретить первых гостей
EOF

cat > archive/old_menu <<'EOF'
Луковый суп из Claude Monet
Мильфей от Луи
Фирменное мясо от Баринова
EOF

cat > claude_monet/farewell_note <<'EOF'
Команда прощается с рестораном Claude Monet
Старые рецепты сохраняются в архиве
Макс обещает не забывать первую кухню
EOF

cat > opening_day <<'EOF'
Ресторан Victor открывается вечером
Баринов волнуется за новую команду
Вика проверяет последние приготовления
EOF

chmod 755 victor
chmod 640 victor/kitchen/barinov_plan
chmod 750 victor/pastry
chmod 644 victor/hall/opening_tables
chmod 750 victor/reception
chmod 640 victor/reception/reservations
chmod 640 victor/management/vika_schedule
chmod 644 archive/old_menu
chmod 755 claude_monet

chmod u=rwx,g=rx,o= victor/kitchen
chmod u=rw,g=r,o= victor/kitchen/max_dish
chmod u=rw,g=r,o= victor/pastry/katya_dessert
chmod u=rwx,g=rx,o= victor/hall
chmod u=rw,g=r,o=r victor/hall/guest_list
chmod u=rwx,g=rx,o= victor/management
chmod u=rw,g=r,o= victor/management/eleonora_order
chmod u=rwx,g=rx,o= archive
chmod u=rw,g=r,o= claude_monet/farewell_note
chmod u=rw,g=r,o=r opening_day

git config --global user.email "emil.ibraev08@gmail.com"
git config --global user.name "Эмиль"

git status
git add .
git commit -m "Вариант 14, часть 1: Создано дерево lab0 и установлены права"

echo "ЧАСТЬ 1 ВЫПОЛНЕНА!"