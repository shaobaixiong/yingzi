#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 11:28:08 2017

@author: brantiusxiong
"""
from __future__ import unicode_literals
import sys
sys.path.append("../")

import jieba
import jieba.posseg
import jieba.analyse
seg_list = jieba.cut("石洼杨花园新庄栗庄丁油坊姚庄雷洼村张百干丁亮村算李庄村常庄康庄油坊庄", cut_all=True)
print("[" + "，".join(seg_list) + "]")  # 全模式

list1 = ['石','洼','杨','花园','新庄','栗','庄','丁','油坊','姚','庄','雷','洼','村','张','百','干','丁','亮','村','算','李','庄','村','常','庄','康庄','油坊','庄']
from collections import Counter
print(Counter(list1))