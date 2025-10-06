Projeto para atiex 4 semestre - Pesquisa de satisfação da feira de profissões

Este projeto consiste em duas partes:

1. **Aplicativo Flutter** → tablets coletam respostas de um survey de satisfação e enviam para o Firebase Firestore.
2. **Dashboard Web** → página HTML que consome os dados do Firestore e exibe em tempo real um gráfico de avaliações.

---

## Estrutura do Projeto

- `index.html` → página principal com o gráfico
- `nginx.conf` → configuração do Nginx para servir a página
- `Dockerfile` → arquivo para criar a imagem Docker e subir no Render
- `Flutter App` → envia respostas para o Firestore
- `Firebase Firestore` → banco de dados em nuvem que armazena as respostas

---

## Flutter - Envio de Respostas

1. Cada tablet utiliza um aplicativo Flutter com um survey de 5 opções de avaliação.  
2. O Flutter envia para o Firestore
