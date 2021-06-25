### 个人造题用的一些脚本

配合 SCNUOJ Polygon 使用。

本项目使用到了 Testlib，感谢 Mike Mirzayanov。

#### 如何使用

- `./genprob.sh` 将每个目录下的题目描述、输入输出、样例文本组合一起，用来生成题面
- `./cleanup.sh` 删除编译生成的 `a.out` 和生成的题面
- `./<问题>/limits.sh` 设置题目标题和时空限制，用于生成题面（由 `./genprob.sh` 调用）
- `cd ./<问题>/data && make` 生成这题的测试数据
