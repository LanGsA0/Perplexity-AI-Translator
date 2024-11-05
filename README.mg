# Perplexity AI Translator

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Perplexity AI Translator는 웹 페이지에서 선택한 텍스트를 Perplexity AI를 사용하여 한국어로 번역하는 Tampermonkey 스크립트입니다.
AI번역이라 영문으로된 질문을 번역할땐 번역 하단에 답변을 하기도 합니다.


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




## Perplexity AI API 사용 안내

Perplexity AI API는 강력한 언어 모델을 활용하여 다양한 텍스트 분석 및 생성 작업을 수행할 수 있는 도구입니다. 이 API를 사용하기 위해서는 유료 구독이 필요하며, 다음과 같은 사항을 참고하세요.

### 유료 구독 및 결제 정보

- **프로 플랜**: Perplexity AI의 Pro 구독 플랜은 고급 AI 모델과 무제한 파일 업로드 기능을 제공합니다. 월간 구독료는 $20이며, 연간 구독료는 $200로 $40의 절약이 가능합니다.
  -- SKT사용하시면 에이닷 사용시 Perplexity AI pro 1년권 제공(10월 31일까지)

- **결제 방법**: 신용카드(Visa, MasterCard, AMEX), Google Pay, Apple Pay, PayPal 등 다양한 결제 수단을 지원합니다.
- **자동 결제 설정**: API 사용량이 초과될 경우 자동으로 크레딧을 충전할 수 있도록 "자동 충전" 기능을 설정할 수 있습니다. 이는 잔액이 2,757 KRW 이하로 떨어질 때 자동으로 충전됩니다.

### API 키 관리

- **API 키 생성**: Perplexity API 설정 페이지에서 신용카드를 등록한 후 API 키를 생성할 수 있습니다. 이 과정에서 카드에 요금이 청구되지는 않으며, 향후 API 사용을 위한 결제 정보를 저장합니다.
- **API 키 사용**: 각 API 요청 시 Authorization 헤더에 Bearer 토큰으로 API 키를 포함해야 합니다.
- **크레딧 부족 시**: 크레딧이 부족하면 API 키가 차단됩니다. 자동 충전을 통해 이를 방지할 수 있습니다.

### 요금 및 토큰 정책

- **요금 구조**: 요청당 고정 요금과 입력 및 출력 토큰 수에 따른 가변 요금이 결합된 형태입니다.
  - 예를 들어, `llama-3.1-sonar-large-128k-online` 모델의 경우 1M 토큰당 $1의 요금이 부과됩니다.
- **토큰 제한**: 기본적으로 쿼리당 최대 4,000개의 토큰을 처리할 수 있으며, Pro 구독자는 최대 32,000개의 토큰까지 확장된 컨텍스트 윈도우를 사용할 수 있습니다.

이 정보를 바탕으로 Perplexity AI API를 효과적으로 활용하시기 바랍니다. 추가적인 질문이나 도움이 필요하시면 Perplexity AI 지원팀에 문의하세요.

### 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 LICENSE 파일을 참조하세요.


프로젝트 링크: https://github.com/LanGsA0/Perplexity-AI-Translator/

## 감사의 말

- [Perplexity AI](https://www.perplexity.ai/)
- [Tampermonkey](https://www.tampermonkey.net/)
