# Guia de Uso - Banco de Cotas Extrator

## Visão Geral

O aplicativo Banco de Cotas Extrator foi desenvolvido para automatizar a extração de dados de consórcios diretamente da tela do seu iPhone. Ele utiliza tecnologia de reconhecimento óptico de caracteres (OCR) para identificar e extrair informações como crédito disponível, grupo, prazo restante, valores de entrada e parcela.

## Interface do Aplicativo

A interface principal do app é dividida em três seções:

**Seção Superior (Header)**: Exibe o status atual do monitoramento, com um indicador visual (ponto verde para ativo, cinza para inativo) e a hora da última extração bem-sucedida.

**Seção Central**: Mostra a lista de consórcios detectados com suas informações principais. Se nenhum dado foi capturado ainda, exibe uma mensagem informativa.

**Seção Inferior (Botões)**: Contém os controles principais para monitoramento, exportação e gerenciamento de dados.

## Modos de Operação

### Monitoramento Contínuo

O monitoramento contínuo é o modo padrão de funcionamento. Neste modo, o aplicativo captura a tela a cada 1,5 segundos e processa automaticamente qualquer dado visível do Banco de Cotas.

**Como ativar**: Toque no botão verde **"Iniciar Monitoramento"** na parte inferior da tela.

**O que acontece**: O aplicativo começará a capturar screenshots em intervalos regulares. Você pode alternar para o app do Banco de Cotas e o extrator continuará funcionando em segundo plano. Quando novos dados forem detectados, eles aparecerão automaticamente na lista e um arquivo Excel será gerado.

**Como desativar**: Toque no botão vermelho **"Parar Monitoramento"** para interromper a captura.

### Captura com Scroll Automático

Este modo é ideal quando você tem uma lista longa de consórcios e quer capturar todos de uma vez. O aplicativo fará scroll automaticamente na tela e capturará múltiplas imagens.

**Como usar**: Toque no botão roxo **"Capturar com Scroll"**. O aplicativo tentará fazer scroll automaticamente até o final da lista, capturando todas as telas. Após a captura, todos os dados serão processados e consolidados.

**Tempo estimado**: Depende do comprimento da lista, mas geralmente leva entre 30 segundos a 2 minutos.

## Exportando Dados

### Exportar para Excel

O formato Excel (CSV) é ideal para análise em programas como Microsoft Excel ou Google Sheets.

**Como exportar**: Toque no botão azul **"Excel"** na seção de botões inferiores.

**O que acontece**: Um arquivo CSV será gerado automaticamente e o menu de compartilhamento do iOS abrirá. Você pode escolher onde salvar o arquivo (Arquivos, iCloud Drive) ou para quem enviar (Email, WhatsApp, Telegram, etc.).

**Formato do arquivo**: O arquivo contém as seguintes colunas:
- Tipo de Consórcio
- Crédito Disponível (R$)
- Grupo
- Prazo Restante (meses)
- Valor Entrada (R$)
- Valor Parcela (R$)
- Data Extração

### Exportar para JSON

O formato JSON é útil para integração com outros sistemas ou aplicativos.

**Como exportar**: Toque no botão ciano **"JSON"** na seção de botões inferiores.

**O que acontece**: Um arquivo JSON será gerado com a mesma estrutura de dados, pronto para ser importado em outros aplicativos ou sistemas.

## Gerenciamento de Dados

### Visualizar Detalhes de um Consórcio

Para ver todas as informações de um consórcio específico, toque em qualquer linha da lista. Uma tela de detalhes abrirá mostrando:

- Tipo de consórcio (com ícone indicativo)
- Crédito disponível
- Número do grupo
- Prazo restante em meses
- Valor de entrada
- Valor da parcela
- Data e hora exata da extração

### Limpar Dados

Se desejar remover todos os dados capturados e começar uma nova extração, toque no botão laranja **"Limpar"**. Esta ação não pode ser desfeita, portanto, certifique-se de ter exportado os dados antes de limpar.

## Dicas de Uso

**Para melhor precisão**: Certifique-se de que a tela do Banco de Cotas está bem iluminada e o texto está claramente visível. O OCR funciona melhor com textos bem definidos.

**Para capturar múltiplas telas**: Use o modo de captura com scroll automático. Ele é mais eficiente do que o monitoramento contínuo para listas longas.

**Para compartilhamento**: Após exportar, você pode compartilhar o arquivo via AirDrop com outro Mac ou iPad, ou enviar por email, WhatsApp, etc.

**Para análise**: Importe o arquivo CSV no Excel ou Google Sheets para criar gráficos e análises mais detalhadas.

## Privacidade e Segurança

Todos os dados são processados localmente no seu iPhone. Nenhuma informação é enviada para servidores externos. O aplicativo não requer conexão com a internet para funcionar.

## Solução de Problemas

**O app não está capturando dados**: Verifique se o app do Banco de Cotas está aberto na tela. Certifique-se também de que as permissões de câmera foram concedidas.

**Os dados aparecem incorretos**: Isso pode ocorrer se o texto na tela não estiver bem definido ou se houver problemas de iluminação. Tente novamente com melhor iluminação.

**O arquivo não foi gerado**: Verifique se há espaço disponível no iPhone. Tente limpar dados desnecessários e tentar novamente.

**O app travou**: Force o fechamento do app (deslize para cima a partir da barra de gestos) e abra-o novamente.
