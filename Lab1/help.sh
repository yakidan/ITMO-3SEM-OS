#!/bin/bash
 help() {
  echo "-------------------------------------"
  echo "Your command:"
  echo "-calc | -c -(sum,sub,mult,div)- -number1- -number2-"
  echo "     Выполняет оперцию (Суммы, Вычитания, Умножения, Деления) с двумя входящими числами"
  echo "-search | -s -dirName- -regex-"
  echo "     Ищет все совпадения по regex в данной директории"
  echo "-strlen | str -string-"
  echo "     Возвращает длину введенной строки"
  echo "-log | -l without params"
  echo "     Выводит все строки файла /var/log/anaconda/X.log, содержащие предупреждения и информацию"
  echo "-exit -e -code"
  echo "     Выходит из программы с кодом -code"
  echo "-help | -h"
  echo "Вывести основные команды"
  echo "-interactive | -i"
  echo "Перейти в интерактивный режим"

  echo "---------------------------------------"
}
