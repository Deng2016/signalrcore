@echo off
rd /q /s build
rd /q /s dist
rd /q /s signalrcore_deng.egg-info
echo "�ϴδ����¼������ɣ���������������"
pause

pip install --upgrade setuptools wheel twine
python setup.py sdist bdist_wheel
twine check dist/*
echo "����ɹ�����Ҫ�ϴ���LaiYe˽��pipԴ�밴�������������ֱ�ӹرմ����˳�"
pause

twine upload -r laiye dist/*
twine upload dist/*
echo "������LaiYe˽��pipԴ�ɹ�"
pause
