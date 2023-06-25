@echo off
SET PATH=%PATH%;%QUARTUS_ROOTDIR_18_1%\bin64
hdlmake
make mrproper
make analyze_elaborate
@pause
