#!/bin/bash
echo "🚀 Configurando bot Discord..."
echo ""

# Criar .env se não existir
if [ ! -f .env ]; then
    echo "📝 Criando arquivo .env..."
    cat > .env << 'ENVFILE'
BOT_TOKEN=seu_token_do_discord_aqui
ADMIN_ID=seu_discord_id_aqui
ENVFILE
    echo "✅ Arquivo .env criado! Edite com seus dados."
else
    echo "⚠️  Arquivo .env já existe."
fi

echo ""
echo "📦 Instalando dependências..."
pip install -r requirements.txt

echo ""
echo "✅ Pronto! Execute: python bot.py"