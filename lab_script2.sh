#!/bin/bash
echo "НАЧАЛО ЧАСТИ 2"

cd ~/lab0

cp opening_day victor/management/opening_copy

cp -r claude_monet archive/claude_backup

ln -s victor/kitchen/barinov_plan victor_menu

cd victor/reception
ln -s ../hall hall_access
cd ~/lab0

ln victor/hall/guest_list victor/hall/guest_list_copy

cat victor/kitchen/max_dish victor/pastry/katya_dessert > victor/kitchen/tasting_menu

cat victor/reception/reservations >> victor/management/vika_schedule

mv claude_monet/farewell_note victor/management/farewell_note

git status
git add .
git commit -m "Вариант 14, часть 2: Скопировано дерево, созданы ссылки и объединены файлы"
git push

echo "ЧАСТЬ 2 ВЫПОЛНЕНА!"