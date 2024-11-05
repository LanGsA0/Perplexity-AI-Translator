# Perplexity AI Translator

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Perplexity AI Translator는 웹 페이지에서 선택한 텍스트를 Perplexity AI를 사용하여 한국어로 번역하는 Tampermonkey 스크립트입니다.

## 주요 기능

- 웹 페이지에서 텍스트 선택 시 번역 버튼 표시
- Perplexity AI를 사용한 고품질 번역
- 번역 결과의 줄바꿈 유지
- 인코딩 문제 해결 (깨진 문자 제거)
- 한글 텍스트 선택 시 번역 버튼 미표시

## 설치 방법

1. Tampermonkey 브라우저 확장 프로그램을 설치합니다.
   - [Chrome용 Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo)
   - [Firefox용 Tampermonkey](https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/)

2. 아래 링크를 클릭하여 스크립트를 설치합니다:
   
   [Perplexity AI Translator 설치](https://raw.githubusercontent.com/LanGsA0/Perplexity-AI-Translator/main/Perplexity-AI-Translator.user.js)

3. Tampermonkey가 스크립트 설치를 확인하는 창을 띄우면 '설치' 버튼을 클릭합니다.

## 사용 방법

1. 번역하고 싶은 텍스트를 웹 페이지에서 선택합니다.
2. 선택한 텍스트 근처에 나타나는 'Perplexity로 번역' 버튼을 클릭합니다.
3. 번역 결과가 선택한 텍스트 아래에 표시됩니다.

## 주의사항

- 이 스크립트를 사용하려면 Perplexity AI API 키가 필요합니다.
- API 키는 스크립트 내의 `API_KEY` 변수에 직접 입력해야 합니다.
- API 키를 안전하게 관리하고, 공개적으로 공유하지 않도록 주의하세요.

### 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.


프로젝트 링크: https://github.com/LanGsA0/Perplexity-AI-Translator/

## 감사의 말

- [Perplexity AI](https://www.perplexity.ai/)
- [Tampermonkey](https://www.tampermonkey.net/)
