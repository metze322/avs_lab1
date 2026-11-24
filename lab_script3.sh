#!/bin/bash
echo "НАЧАЛО ЧАСТИ 3"

cd ~/lab0

ls -lR . | grep "^-" | grep -v "copy" | sort -k5 -nr | head -5

grep -r -h -i -E "victor|баринов" victor archive | grep -v -i "стар" | sort -r | head -6

grep -r -l -i -E "макс|кухн" victor/kitchen archive/claude_backup | wc -l

for f in victor/hall/guest_* victor/hall/opening_*; do
  head -n 1 "$f"
  tail -n 1 "$f"
done | grep -i -E "гост|стол" | sort

grep -v -i "десерт" victor/kitchen/tasting_menu | grep -i -E "макс|блюд" | sort -r | wc -w

ls -lR . | grep -E "^-.{9}2 " | sort -k9 -r

ls -lR . | grep "^l" | sort -k9 | head -1

rm victor/management/opening_copy
rm victor_menu
rm victor/reception/hall_access
rm victor/hall/guest_list_copy
rm victor/management/farewell_note
rmdir claude_monet
rm archive/old_menu
rm -r archive/claude_backup

git add .
git commit -m "Вариант 14, Часть 3: Поиск, фильтрация и удаление"
git push

echo "ЧАСТЬ 3 ВЫПОЛНЕНА!"