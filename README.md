# Banco de Cotas - Extrator de Dados

Um aplicativo iOS nativo desenvolvido em Swift e SwiftUI para extrair automaticamente dados de consórcios do aplicativo "Banco de Cotas" usando reconhecimento óptico de caracteres (OCR) e gerar planilhas Excel.

## Funcionalidades Principais

1. **Monitoramento Contínuo**: Captura a tela em tempo real e extrai dados automaticamente.
2. **Captura com Scroll**: Faz scroll automático na tela para capturar listas longas de consórcios.
3. **OCR Avançado**: Utiliza o Vision Framework da Apple para reconhecer textos com alta precisão.
4. **Exportação para Excel**: Gera arquivos CSV formatados compatíveis com Excel.
5. **Exportação para JSON**: Gera arquivos JSON para integração com outros sistemas.
6. **Compartilhamento Fácil**: Compartilha os arquivos gerados via AirDrop, Email, WhatsApp, etc.

## Requisitos do Sistema

- iOS 15.0 ou superior
- Xcode 13.0 ou superior
- Dispositivo físico (iPhone/iPad) para testar a captura de tela (simuladores não capturam a tela de outros apps)

## Estrutura do Projeto

O projeto está organizado nas seguintes pastas:

- `Models/`: Modelos de dados (`ConsorcioData.swift`)
- `Services/`: Serviços de negócio
  - `OCRServiceAdvanced.swift`: Processamento de imagem e extração de texto
  - `ExcelServiceAdvanced.swift`: Geração de arquivos CSV e JSON
  - `ScrollAutomationService.swift`: Automação de scroll na tela
  - `BatchProcessingService.swift`: Processamento em lote de múltiplas imagens
- `ViewModels/`: Lógica de apresentação (`BancoCotasViewModelAdvanced.swift`)
- `Views/`: Interface de usuário em SwiftUI (`ContentViewAdvanced.swift`)

## Como Instalar e Executar

1. Abra o Xcode e crie um novo projeto iOS (App).
2. Nomeie o projeto como `BancoCotasApp`.
3. Substitua os arquivos gerados pelos arquivos fornecidos neste pacote.
4. No arquivo `BancoCotasApp.swift`, certifique-se de que está chamando `ContentViewAdvanced()`.
5. Conecte seu iPhone ao Mac.
6. Selecione seu iPhone como destino de compilação.
7. Clique em "Run" (Cmd + R) para compilar e instalar o app no seu dispositivo.

## Como Usar o App

### Modo de Monitoramento Contínuo

1. Abra o app "Banco de Cotas Extrator".
2. Toque em **"Iniciar Monitoramento"**.
3. Alterne para o app original do "Banco de Cotas".
4. O extrator ficará rodando em segundo plano, capturando a tela a cada 1.5 segundos.
5. Quando terminar, volte ao extrator e toque em **"Parar Monitoramento"**.
6. Os dados extraídos aparecerão na lista.

### Modo de Captura com Scroll

1. Abra o app "Banco de Cotas Extrator".
2. Toque em **"Capturar com Scroll"**.
3. O app tentará fazer scroll automaticamente e capturar todas as telas.
4. Aguarde o processamento das imagens.
5. Os dados consolidados aparecerão na lista.

### Exportando Dados

1. Com dados na lista, toque em **"Excel"** para gerar um arquivo CSV.
2. O menu de compartilhamento do iOS abrirá automaticamente.
3. Escolha onde salvar (Arquivos, iCloud) ou para quem enviar (Email, WhatsApp).
4. Para exportar em formato JSON, toque no botão **"JSON"**.

## Detalhes Técnicos da Extração

O sistema utiliza expressões regulares (Regex) para identificar padrões específicos nos textos extraídos pelo OCR:

- **Valores Monetários**: Identifica padrões como `R$ 225.514,68` ou `225.514,68`.
- **Grupos e Prazos**: Identifica números após palavras-chave como `Grupo:` e `Prazo restante:`.
- **Agrupamento**: Agrupa textos que estão na mesma linha horizontal (coordenada Y) para formar blocos de informação consistentes.

## Privacidade e Segurança

O aplicativo processa todas as imagens localmente no dispositivo usando o Vision Framework. Nenhuma imagem ou dado extraído é enviado para servidores externos, garantindo total privacidade das suas informações financeiras.
