import os
import sys

args = sys.argv

# 必须有两个以上的参数
if len(args) < 2:
    sys.exit(1)

# linux / win32 / drawin
for item in args[1:]:
    if item == sys.platform:
        sys.exit(0)
sys.exit(1)