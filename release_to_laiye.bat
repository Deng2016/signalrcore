@echo off
rd /q /s build
rd /q /s dist
rd /q /s signalrcore_deng.egg-info
echo "上次打包记录清理完成，按任意键继续打包"
pause

pip install --upgrade setuptools wheel twine
python setup.py sdist bdist_wheel
twine check dist/*
echo "打包成功，需要上传到LaiYe私有pip源请按任意键，否则请直接关闭窗口退出"
pause

twine upload -r laiye dist/*
twine upload dist/*
echo "发布到LaiYe私有pip源成功"
pause
