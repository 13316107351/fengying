@echo off
REM ������ı��زֿ�Ŀ¼������ʵ��·���޸ģ�
cd /d "C:\Users\Administrator\fengying"

REM ���Git״̬
git status

REM ������и��ĵ��ݴ���
git add --all

REM �ύ���ģ��Զ���д�ύ��Ϣ��
git commit -m "�Զ�����: %date% %time%"

REM ���͵�GitHub����֧��Ĭ��Ϊmain������ʵ������޸ģ�
git push origin main

REM ��ʾ�����Ϣ
echo ���������͵�GitHub��
rem pause