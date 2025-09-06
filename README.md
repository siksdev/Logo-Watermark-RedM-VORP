# 🎨 Logo Watermark para RedM (VORP)

Este é um resource simples para **RedM** que exibe uma **logo centralizada no topo da tela** após a seleção do personagem.  
Foi feito para rodar em servidores com **VORP Framework**, mas também funciona em qualquer servidor RedM.

---

## 🚀 Funcionalidades
- Exibe automaticamente uma logo após o jogador spawnar.  
- Posição: **topo central da tela**.  
- Comando `/logo` para ativar/desativar manualmente.  
- Compatível com qualquer versão do **VORP**.  

---

## 🛠️ Tecnologias utilizadas
- **Lua** → lógica do cliente (RedM).  
- **HTML5 / CSS3 / JavaScript** → interface gráfica (NUI).  

---

## 📂 Estrutura
logo_watermark/
│── fxmanifest.lua
│── client.lua
│── html/
│ │── ui.html
│ │── style.css
│ │── script.js

---

## 🔧 Instalação
1. Baixe ou clone este repositório.  
2. Coloque a pasta `logo_watermark` em `resources/`.  
3. Adicione no seu `server.cfg`: ensure logo_watermark
4. Altere a logo em `html/ui.html` → troque o link da imagem `<img src="...">`.  

---

## 📸 Preview
![Preview](https://i.imgur.com/EOd0F2P.jpeg)

---

## 📜 Licença de Uso
Você pode **utilizar, compartilhar e modificar este resource à vontade** em seus servidores.  
⚠️ **A única regra é: não altere o arquivo `fxmanifest.lua`.**

---

✍️ Autor: SIKSDEV


