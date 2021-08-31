# demoapp

Aplicação da Neotel desenvolvida para demonstração de tokenização e mascaramento pelo [Vormetric Tokenization Server(VTS)](https://cpl.thalesgroup.com/encryption/tokenization) da Thales. O VTS oferece uma *API*, flexibilizando a integração com qualquer sistema. Esta aplicação faz uso dos endpoints expostos pelo VTS para comunicar seu banco de dados com a VTS e fazer operações de tokenização e mascaramento.

## Quickstart

Em um terminal, exporte as seguintes variáveis de ambiente: 
  ```console
  $ export VTS_URL=132.226.244.247
  $ export TOKEN_PASS="!3BananaAmassada"
  ```

### - Execute via Docker

* Execute o seguinte comando:
  ```console
  $ docker run  -e VTS_URL=$VTS_URL -e TOKEN_PASS=$TOKEN_PASS -p 8000:8000 asrocha/neoapp
  ```

### - Execute diretamente
1. Clone o repositório:
  ```console
  $ git clone https://github.com/neotel-br/demoapp/
  $ cd demoapp/
  ```
2. Instale as dependências: 
  ```console
  $ pip install -r
  ```
3. Execute o aplicação:
  ```console 
  $ python3 manage.py runserver
  ```
## Demonstração

| User | Supervisor  |
|------|-------------|
| ![image](https://user-images.githubusercontent.com/17788851/131561697-cc388a4c-9a71-48c5-ac3b-4fcd85aa4271.png) | ![image](https://user-images.githubusercontent.com/17788851/131562172-69838f4c-b9fa-4a97-b2f6-cc9b4130576c.png) | 
