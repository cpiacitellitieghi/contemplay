# Resumo Técnico - Banco de Cotas Extrator

## Arquitetura do Aplicativo

O aplicativo foi desenvolvido seguindo a arquitetura MVVM (Model-View-ViewModel), que separa a lógica de negócio da interface de usuário, facilitando manutenção e testes.

### Componentes Principais

**Modelos (Models)**: Definem as estruturas de dados utilizadas pelo aplicativo. A classe `Consorcio` representa um consórcio individual com seus atributos (crédito disponível, grupo, prazo, valores). A classe `Extracao` agrupa múltiplos consórcios com um timestamp.

**Serviços (Services)**: Implementam a lógica de negócio do aplicativo. O `OCRServiceAdvanced` utiliza o Vision Framework da Apple para reconhecer texto em imagens. O `ExcelServiceAdvanced` gera arquivos CSV e JSON. O `ScrollAutomationService` automatiza o scroll na tela. O `BatchProcessingService` processa múltiplas imagens em paralelo.

**ViewModels**: Gerenciam o estado da aplicação e a comunicação entre a interface e os serviços. O `BancoCotasViewModelAdvanced` coordena o monitoramento, processamento e exportação de dados.

**Views**: Implementam a interface de usuário em SwiftUI. O `ContentViewAdvanced` é a tela principal, e `ConsorcioDetailView` exibe detalhes de um consórcio.

## Tecnologias Utilizadas

**Swift 5.5+**: Linguagem de programação moderna e segura para iOS.

**SwiftUI**: Framework moderno para construção de interfaces de usuário declarativas.

**Vision Framework**: Framework do iOS para processamento de imagens e OCR.

**Foundation**: Framework padrão do iOS para operações de arquivo, rede e dados.

**UIKit**: Integração com componentes UIKit quando necessário (compartilhamento de arquivos).

## Fluxo de Extração de Dados

1. **Captura de Tela**: O aplicativo captura a tela do dispositivo usando `UIGraphicsImageRenderer`.

2. **Processamento OCR**: A imagem é enviada ao `VNRecognizeTextRequest` do Vision Framework, que retorna textos reconhecidos com suas posições.

3. **Agrupamento de Linhas**: Os textos são agrupados por proximidade vertical para formar linhas lógicas.

4. **Parsing com Regex**: Expressões regulares identificam padrões específicos:
   - Valores monetários: `R\$\s*([0-9]{1,3}(?:\.[0-9]{3})*,[0-9]{2})`
   - Números: `:\s*([0-9]+)`

5. **Consolidação**: Dados duplicados são removidos, mantendo apenas as informações mais recentes.

6. **Exportação**: Os dados consolidados são formatados em CSV ou JSON.

## Otimizações de Performance

**Captura Seletiva**: O aplicativo não captura a tela continuamente, mas em intervalos de 1,5 segundos, economizando bateria.

**Processamento Assíncrono**: Todas as operações de OCR e processamento ocorrem em threads secundárias, mantendo a interface responsiva.

**Deduplicação**: Dados duplicados são removidos automaticamente, reduzindo o tamanho dos arquivos exportados.

**Comparação de Imagens**: O aplicativo compara imagens consecutivas para detectar quando o scroll terminou, evitando capturas desnecessárias.

## Segurança e Privacidade

**Processamento Local**: Todas as imagens e dados são processados localmente no dispositivo. Nenhuma informação é enviada para servidores externos.

**Sem Permissões Excessivas**: O aplicativo solicita apenas as permissões necessárias (câmera e fotos).

**Dados Efêmeros**: As imagens capturadas são descartadas após o processamento. Apenas os dados extraídos são armazenados.

## Requisitos de Compilação

- Xcode 13.0 ou superior
- iOS 15.0 ou superior como deployment target
- Swift 5.5 ou superior

## Estrutura de Arquivos

```
BancoCotasApp/
├── BancoCotasApp.swift                 # Ponto de entrada do app
├── Models/
│   └── ConsorcioData.swift             # Modelos de dados
├── Services/
│   ├── OCRServiceAdvanced.swift        # Extração de texto
│   ├── ExcelServiceAdvanced.swift      # Geração de arquivos
│   ├── ScrollAutomationService.swift   # Automação de scroll
│   └── BatchProcessingService.swift    # Processamento em lote
├── ViewModels/
│   └── BancoCotasViewModelAdvanced.swift # Lógica de apresentação
├── Views/
│   └── ContentViewAdvanced.swift       # Interface principal
├── Info.plist                          # Configurações do app
├── Package.swift                       # Dependências
├── README.md                           # Documentação geral
├── INSTALACAO.md                       # Guia de instalação
├── GUIA_USO.md                         # Guia de uso
└── RESUMO_TECNICO.md                   # Este arquivo
```

## Possíveis Melhorias Futuras

**Suporte a iCloud**: Sincronizar dados entre dispositivos via iCloud.

**Histórico de Extrações**: Armazenar histórico de todas as extrações realizadas.

**Filtros e Busca**: Permitir filtrar consórcios por tipo, grupo ou valor.

**Notificações**: Alertar o usuário quando novos dados forem detectados.

**Integração com Planilhas**: Enviar dados diretamente para Google Sheets ou Excel Online.

**Modo Escuro**: Suporte completo para modo escuro do iOS.

## Notas para Desenvolvedores

Para estender o aplicativo, considere:

1. **Adicionar novos padrões de regex** em `OCRServiceAdvanced.swift` para suportar outros formatos de dados.

2. **Implementar sincronização em nuvem** adicionando métodos em `ExcelServiceAdvanced.swift`.

3. **Melhorar o OCR** ajustando os parâmetros do `VNRecognizeTextRequest`, como `minimumTextHeight`.

4. **Adicionar testes unitários** para validar a extração de dados com diferentes formatos de imagem.

5. **Otimizar o processamento** implementando cache de imagens ou processamento em GPU.
