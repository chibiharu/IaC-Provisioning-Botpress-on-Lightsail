#!/bin/bash

### パラメータ指定 ###
CURRENT=$(cd $(dirname $0);pwd)
sh_param="${CURRENT}/../definition/sh_param.conf"


### 設定ファイル読み込み ###
# sectionを指定、... = ... 形式の行のみを抽出して、 source コマンドに食わせる
declare -r SECTIONPJ="PJPrefix"
source <(sed -n -E '/^\['${SECTIONPJ}'\]/,/^\[\S+\]/s/^\s*(\S+)\s*=\s*(.+)$/\1=\2/p' <"${sh_param}")
declare -r SECTION="Lightsail"
source <(sed -n -E '/^\['${SECTION}'\]/,/^\[\S+\]/s/^\s*(\S+)\s*=\s*(.+)$/\1=\2/p' <"${sh_param}")


### スタック作成 ###
aws cloudformation update-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} \
 --parameters ParameterKey=PJPrefix,ParameterValue=${PJPrefix} \
 --capabilities CAPABILITY_NAMED_IAM
