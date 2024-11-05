// ==UserScript==
// @name         Perplexity AI Translator (Final Version)
// @namespace    http://tampermonkey.net/
// @version      1.4
// @description  Translate selected text using Perplexity AI API with improved UI, formatting, and language detection
// @match        *://*/*
// @grant        GM_xmlhttpRequest
// @grant        GM_addStyle
// ==/UserScript==

(function() {
    'use strict';

    const API_KEY = 'YOUR_PERPLEXITY_API_KEY_HERE'; // 여기에 API 키를 입력하세요
    const API_URL = 'https://api.perplexity.ai/chat/completions';

    GM_addStyle(`
        #perplexity-translator {
            background: white;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            z-index: 9999;
            max-width: 300px;
            display: none;
            position: absolute;
            font-size: 14px;
            line-height: 1.4;
            user-select: text;
            white-space: pre-wrap;
        }
        #perplexity-translate-btn {
            position: absolute;
            background: #4CAF50;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;
            font-size: 12px;
            z-index: 10000;
        }
    `);

    let translatorDiv = document.createElement('div');
    translatorDiv.id = 'perplexity-translator';
    document.body.appendChild(translatorDiv);

    let translateBtn = document.createElement('button');
    translateBtn.id = 'perplexity-translate-btn';
    translateBtn.textContent = 'Perplexity로 번역';
    translateBtn.style.display = 'none';
    document.body.appendChild(translateBtn);

    let isTranslating = false;

    function translateText(text) {
        const messages = [
            {role: "system", content: "You are a translator. Translate the given text to Korean. Provide only the direct translation without any additional explanations, context, or original text in parentheses. Preserve the original line breaks. Ensure all characters are properly encoded in UTF-8. Do not use any non-Korean characters in your translation."},
            {role: "user", content: `Translate the following text to Korean: "${text}"`}
        ];

        GM_xmlhttpRequest({
            method: "POST",
            url: API_URL,
            headers: {
                "Content-Type": "application/json",
                "Authorization": `Bearer ${API_KEY}`
            },
            data: JSON.stringify({
                model: "llama-3.1-sonar-large-128k-online",
                messages: messages
            }),
            onload: function(response) {
                const result = JSON.parse(response.responseText);
                let translation = result.choices[0].message.content.trim();
                translation = removeParentheses(translation);
                translation = adjustTranslationFormat(translation);
                translation = fixEncoding(translation);
                showTranslation(translation);
            },
            onerror: function(error) {
                console.error('Translation error:', error);
                showTranslation('번역 중 오류가 발생했습니다.');
            }
        });
    }

    function removeParentheses(text) {
        return text.split('(')[0].trim();
    }

    function adjustTranslationFormat(translationText) {
        const lines = translationText.split('\n');
        const formattedTranslation = lines.map(line => {
            const sentences = line.split('. ');
            return sentences.join('. ');
        });
        return formattedTranslation.join('\n');
    }

    function fixEncoding(text) {
        // 한글 및 일반적인 문장 부호만 허용
        return text.replace(/[^\uAC00-\uD7A3\s.,!?]/g, '');
    }

    function showTranslation(text) {
        translatorDiv.textContent = text;
        translatorDiv.style.display = 'block';
        
        const selection = window.getSelection();
        const range = selection.getRangeAt(0);
        const rect = range.getBoundingClientRect();
        
        translatorDiv.style.top = `${window.scrollY + rect.bottom + 30}px`;
        translatorDiv.style.left = `${window.scrollX + rect.left}px`;
        
        translateBtn.style.display = 'none';
        isTranslating = true;
    }

    function isKorean(text) {
        // 한글 문자가 포함되어 있는지 확인
        return /[\uAC00-\uD7A3]/.test(text);
    }

    function showTranslateButton(e) {
        if (isTranslating) return;

        const selection = window.getSelection();
        const selectedText = selection.toString().trim();
        if (selectedText && !translatorDiv.contains(e.target) && !isKorean(selectedText)) {
            const range = selection.getRangeAt(0);
            const rect = range.getBoundingClientRect();
            translateBtn.style.top = `${window.scrollY + rect.bottom + 5}px`;
            translateBtn.style.left = `${window.scrollX + rect.left}px`;
            translateBtn.style.display = 'block';
            translatorDiv.style.display = 'none';
        } else {
            translateBtn.style.display = 'none';
        }
    }

    document.addEventListener('mouseup', showTranslateButton);

    translateBtn.addEventListener('click', function() {
        const selectedText = window.getSelection().toString().trim();
        if (selectedText) {
            translateText(selectedText);
        }
    });

    document.addEventListener('mousedown', function(e) {
        if (e.target !== translateBtn && !translatorDiv.contains(e.target)) {
            translateBtn.style.display = 'none';
            translatorDiv.style.display = 'none';
            isTranslating = false;
        }
    });

    translatorDiv.addEventListener('mousedown', function(e) {
        e.stopPropagation();
    });

    translatorDiv.addEventListener('mouseup', function(e) {
        e.stopPropagation();
    });

    translatorDiv.addEventListener('click', function(e) {
        e.stopPropagation();
    });
})();
