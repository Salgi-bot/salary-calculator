#!/bin/bash
# 급여계산기 자동 배포 스크립트
# 사용법: ./deploy.sh [커밋 메시지]
#         ./deploy.sh          → 타임스탬프 자동 메시지
#         ./deploy.sh "수정 내용"  → 직접 메시지 입력

set -e

MSG="${1:-"deploy: $(date '+%Y-%m-%d %H:%M')"}"

git add salary_web_v3_5.html
git commit -m "$MSG"
git push origin main

echo ""
echo "✅ 배포 완료: https://salgi-bot.github.io/salary-calculator/salary_web_v3_5.html"
