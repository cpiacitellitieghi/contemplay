# Guia de Instalação - Banco de Cotas Extrator

## Pré-requisitos

Antes de começar, certifique-se de ter:

- **Mac** com macOS 12.0 ou superior
- **Xcode** 13.0 ou superior (disponível na App Store)
- **iPhone/iPad** com iOS 15.0 ou superior
- **Cabo USB-C ou Lightning** para conectar o dispositivo ao Mac
- **Apple Developer Account** (gratuita para testes locais)

## Passo 1: Preparar o Projeto no Xcode

1. **Extrair os arquivos**: Descompacte o arquivo `BancoCotasApp.zip` em uma pasta de sua escolha.

2. **Abrir o Xcode**: Abra o Xcode no seu Mac.

3. **Criar um novo projeto**:
   - Clique em **File** > **New** > **Project**
   - Selecione **iOS** > **App**
   - Clique em **Next**

4. **Configurar o projeto**:
   - **Product Name**: `BancoCotasApp`
   - **Team**: Selecione sua equipe (ou crie uma conta gratuita)
   - **Organization Identifier**: `com.bancodecotas`
   - **Interface**: Selecione **SwiftUI**
   - **Language**: **Swift**
   - Clique em **Next**

5. **Salvar o projeto**: Escolha uma pasta para salvar (pode ser a mesma onde extraiu os arquivos).

## Passo 2: Adicionar os Arquivos ao Projeto

1. **Abrir o Finder** e navegue até a pasta `BancoCotasApp` extraída.

2. **Copiar os arquivos**:
   - Selecione todas as pastas: `Models/`, `Services/`, `ViewModels/`, `Views/`
   - Copie-as (Cmd + C)

3. **Colar no Xcode**:
   - No Xcode, clique com botão direito na pasta `BancoCotasApp` no navegador de projeto (esquerda)
   - Selecione **Add Files to "BancoCotasApp"**
   - Navegue até a pasta extraída e selecione as pastas copiadas
   - Clique em **Add**

4. **Substituir o arquivo principal**:
   - Abra o arquivo `BancoCotasApp.swift` no Xcode
   - Substitua o conteúdo pelo arquivo fornecido no pacote

5. **Substituir ContentView**:
   - Abra o arquivo `ContentView.swift`
   - Substitua pelo arquivo `ContentViewAdvanced.swift` fornecido

## Passo 3: Configurar Capacidades

1. **Abrir Project Settings**:
   - Clique no projeto `BancoCotasApp` no navegador
   - Selecione o target `BancoCotasApp`
   - Vá para a aba **Signing & Capabilities**

2. **Adicionar capacidades necessárias**:
   - Clique em **+ Capability**
   - Adicione: **Camera** (para captura de tela)
   - Adicione: **Photo Library** (para acesso a fotos)

3. **Configurar Team**:
   - Certifique-se de que o **Team** está selecionado
   - O **Bundle Identifier** deve ser único

## Passo 4: Conectar o Dispositivo

1. **Conectar o iPhone/iPad** ao Mac usando o cabo USB.

2. **Confiar no computador**:
   - No seu dispositivo iOS, toque em **Confiar** quando solicitado
   - Insira sua senha do iPhone

3. **Verificar no Xcode**:
   - No Xcode, clique no seletor de destino (perto do botão Play)
   - Seu dispositivo deve aparecer na lista
   - Selecione-o

## Passo 5: Compilar e Instalar

1. **Compilar o projeto**:
   - Pressione **Cmd + B** para compilar
   - Aguarde até que a compilação seja concluída com sucesso

2. **Instalar no dispositivo**:
   - Pressione **Cmd + R** para executar
   - O app será compilado e instalado automaticamente no seu iPhone

3. **Aguardar a instalação**:
   - Pode levar alguns minutos na primeira vez
   - Você verá uma barra de progresso no Xcode

## Passo 6: Permitir Permissões

Quando o app abrir pela primeira vez no seu iPhone:

1. **Câmera**: Toque em **Allow** para permitir acesso à câmera (necessário para capturar a tela)
2. **Fotos**: Toque em **Allow** para permitir acesso à biblioteca de fotos

## Passo 7: Testar o App

1. **Abrir o app**: Procure por "Banco de Cotas" na tela inicial do iPhone
2. **Testar monitoramento**: Toque em **Iniciar Monitoramento**
3. **Alternar para o Banco de Cotas**: Abra o app original do Banco de Cotas
4. **Verificar extração**: Volte ao app e verifique se os dados foram extraídos

## Solução de Problemas

### Erro: "Cannot connect to device"

- Desconecte e reconecte o cabo USB
- Reinicie o Xcode
- Reinicie o iPhone

### Erro: "Team ID not set"

- Vá para **Project Settings** > **Signing & Capabilities**
- Selecione um Team válido

### App não captura dados

- Certifique-se de que o app do Banco de Cotas está aberto
- Verifique se as permissões de câmera foram concedidas
- Teste o OCR com uma imagem estática primeiro

### Compilação lenta

- Limpe o build: **Cmd + Shift + K**
- Feche outros aplicativos
- Reinicie o Xcode

## Próximos Passos

Após a instalação bem-sucedida:

1. **Testar com dados reais**: Abra o Banco de Cotas e monitore a extração
2. **Exportar dados**: Use os botões Excel/JSON para exportar
3. **Compartilhar**: Utilize o compartilhamento do iOS para enviar os arquivos

## Suporte

Se encontrar problemas durante a instalação:

1. Verifique se todos os pré-requisitos estão instalados
2. Consulte a documentação do Xcode
3. Verifique o console de erro no Xcode para mensagens específicas
