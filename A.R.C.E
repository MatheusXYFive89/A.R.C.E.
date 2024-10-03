<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot A.R.C.E</title>

    <!-- Fonte futurista e Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Orbitron', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0; /* Cor do modo claro */
            color: #000; /* Texto preto no modo claro */
            transition: background-color 0.3s ease;
        }

        #chat-container {
            width: 90%;
            max-width: 500px;
            border: 2px solid #007bff; /* Cor da borda do modo claro */
            border-radius: 10px;
            background-color: #fff; /* Cor de fundo do container no modo claro */
            padding: 20px;
            box-shadow: 0 6px 12px rgba(0, 123, 255, 0.3);
            transition: background-color 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
        }

        #messages {
            height: 300px;
            overflow-y: auto;
            margin-bottom: 20px;
            border: 2px solid #007bff; /* Cor da borda das mensagens no modo claro */
            padding: 10px;
            border-radius: 5px;
            background-color: #f0f0f0; /* Cor de fundo das mensagens no modo claro */
            transition: border-color 0.3s ease;
        }

        #user-input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 2px solid #007bff; /* Cor da borda da entrada de usuário no modo claro */
            background-color: #fff; /* Cor de fundo da entrada de usuário no modo claro */
            color: #000; /* Texto preto na entrada de usuário no modo claro */
            transition: border-color 0.3s ease;
        }

        button {
            margin-top: 10px;
            width: 100%;
            padding: 10px;
            background-color: #007bff; /* Cor do botão no modo claro */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3; /* Cor do botão ao passar o mouse no modo claro */
        }

        #emoji {
            width: 100px;
            height: 100px;
            background-color: #007bff; /* Cor de fundo do emoji */
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 40px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div id="chat-container">
        <div id="emoji">😊</div>
        <div id="messages"></div>
        <input type="text" id="user-input" placeholder="Digite sua mensagem aqui...">
        <button id="send-button">Enviar</button>
    </div>

    <script>
        const greetings = ["oi", "olá", "oiii", "e aí", "salve", "bom dia", "boa tarde", "boa noite"];

        document.getElementById("send-button").addEventListener("click", function() {
            const userInput = document.getElementById("user-input").value.toLowerCase().trim();
            const messagesContainer = document.getElementById("messages");

            // Adiciona a mensagem do usuário
            const userMessage = document.createElement("div");
            userMessage.textContent = userInput;
            messagesContainer.appendChild(userMessage);

            // Verifica se a mensagem do usuário é uma saudação
            if (greetings.includes(userInput)) {
                const botMessage = document.createElement("div");
                botMessage.textContent = "Olá! Como posso ajudar?";
                messagesContainer.appendChild(botMessage);
            } else {
                const botMessage = document.createElement("div");
                botMessage.textContent = "Desculpe, não entendi.";
                messagesContainer.appendChild(botMessage);
            }

            // Limpa a entrada de texto
            document.getElementById("user-input").value = "";
        });
    </script>

</body>
</html>
