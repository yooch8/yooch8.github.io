# 유창훈 · Product Owner

바이오 R&D 6년, 바이오 IT 서비스 기획 6년 — 도메인 전문가의 문제를 제품으로 바꾸는 12년차 PO.

포트폴리오 → **https://yooch8.github.io**

| 파일 | 내용 |
|---|---|
| `index.html` | 포트폴리오 페이지 (이 파일 하나가 사이트 전체) |
| `유창훈_포트폴리오.pdf` | 같은 내용의 PDF — `publish.ps1` 이 자동 생성 |
| `publish.ps1` | PDF 생성 → 커밋 → push 를 한 번에 |

## 관리 방법

1. `index.html` 을 고친다 (VS Code 에서 열어 텍스트 수정)
2. 브라우저로 `index.html` 을 열어 확인한다
3. 이 폴더에서 배포한다

```powershell
powershell -ExecutionPolicy Bypass -File .\publish.ps1 "바꾼 내용 한 줄"
```

1~2분 뒤 https://yooch8.github.io 에 반영된다. 배포 상태는 레포의 Actions 탭(`pages build and deployment`)에서 확인.

## 내용 기준

- 원본 · 원티드 이력서 최종본 (`yooch8/resume` 레포 `2026-10_v2/원티드_이력서_최종.md`)
- 원티드 이력서가 바뀌면 이 페이지의 같은 항목도 맞춘다 — 경력 항목마다 `역할 · 주요성과` 두 줄이 원티드와 같은 문장
- 공개 사이트이므로 넣지 않는 것 · 사내 비용 금액(외주비 · 운영비) · 동료 이름 · 내부 서버 · 레포 정보 · 연락처
