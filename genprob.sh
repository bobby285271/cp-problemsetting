#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "${DIR}"

echo "-------------------"

for PROB in ${DIR}/*/
do
    if [ ! -f ${PROB}/text/1-statement.md ]
    then
        continue
    fi
    echo $( basename ${PROB} )
    source ${PROB}/limits.sh
    DEST_FILE="statement-$( basename ${PROB} ).gen.md"
    echo "## ${PROB_TITLE}" > ${DEST_FILE}
    echo "> **输入**：			标准输入" >> ${DEST_FILE}
    echo "> **输出**：			标准输出" >> ${DEST_FILE}
    echo "> **时间限制**：	\$${PROB_CPP_TIME_LIMIT}\$ 秒 (C/C++) 或 \$${PROB_JAVA_TIME_LIMIT}\$ 秒 (Java/Python)" >> ${DEST_FILE}
    echo "> **空间限制**：	\$${PROB_CPP_MEMORY_LIMIT}\$ MB (C/C++) 或 \$${PROB_JAVA_MEMORY_LIMIT}\$ MB (Java/Python)" >> ${DEST_FILE}
    echo "" >> ${DEST_FILE}
    echo "### 题目描述" >> ${DEST_FILE}
    cat ${PROB}/text/1-statement.md >> ${DEST_FILE}
    echo "" >> ${DEST_FILE}
    echo "### 输入格式" >> ${DEST_FILE}
    cat ${PROB}/text/2-input.md >> ${DEST_FILE}
    echo "" >> ${DEST_FILE}
    echo "### 输出格式" >> ${DEST_FILE}
    cat ${PROB}/text/3-output.md >> ${DEST_FILE}
    echo "" >> ${DEST_FILE}
    echo "### 样例" >> ${DEST_FILE}
    for ((it=1;it<4;it++))
    do
        if [ -f ${PROB}/data/sample/${it}.in ]
        then
            echo "**样例 \$${it}\$** - 标准输入：" >> ${DEST_FILE}
            echo "" >> ${DEST_FILE}
            echo "\`\`\`plain" >> ${DEST_FILE}
            cat "${PROB}/data/sample/${it}.in" >> ${DEST_FILE}
            echo "\`\`\`" >> ${DEST_FILE}
            echo "" >> ${DEST_FILE}
            echo "**样例 \$${it}\$** - 标准输出：" >> ${DEST_FILE}
            echo "" >> ${DEST_FILE}
            echo "\`\`\`plain" >> ${DEST_FILE}
            cat "${PROB}/data/sample/${it}.out" >> ${DEST_FILE}
            echo "\`\`\`" >> ${DEST_FILE}
            echo "" >> ${DEST_FILE}
        fi
    done
    echo "### 提示与说明" >> ${DEST_FILE}
    cat ${PROB}/text/4-note.md >> ${DEST_FILE}
done
