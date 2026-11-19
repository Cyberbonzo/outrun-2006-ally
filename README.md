# OutRun 2006: Coast 2 Coast no ROG Ally

Perfil para a edição de Windows no Bazzite, usando Proton 11.0 e DXVK. A configuração usa tela cheia em 1920 × 1080 (16:9) e limita a taxa de quadros a 60 FPS.

## Instalação

1. Coloque os arquivos da sua própria edição de PC na pasta `game`, ao lado do script. O executável esperado é `game/OR2006C2C.EXE`. Use as pastas de dados completas do jogo, incluindo `Scripts`, e a biblioteca `binkw32.dll`.
2. Copie `outrun2006.ini` para a pasta `game` para aplicar o perfil de vídeo. Se já tiver um arquivo personalizado, ajuste nele `DX/RES/WIDTH = 1920`, `DX/RES/HEIGHT = 1080` e `DX/WINDOWED = 0`. O script copia o modelo automaticamente quando o arquivo ainda não existe.
3. Use o Proton 11.0 da biblioteca principal da Steam. Execute `chmod +x jogar.sh` e adicione `jogar.sh` como jogo não Steam. Nas propriedades do atalho, selecione 1920 × 1080. Deixe a compatibilidade forçada desativada, pois o script já inicia o Proton.
4. Na primeira execução, crie sua licença. Nas próximas, abra o mesmo atalho e avance pela tela de título. O jogo carrega a última licença usada automaticamente.

## Salvamento do progresso

O OutRun usa seu próprio salvamento automático. Depois de concluir uma missão, avance pela tela de resultado e espere voltar ao menu antes de fechar pela Steam. No teste com uma missão concluída, o jogo atualizou `game/SaveGame/License1.dat` e gravou `common.dat`. Na abertura seguinte, confirmou-se a leitura dos dois arquivos. Preserve toda a pasta `game/SaveGame` ao atualizar ou mover a instalação, além do prefixo `compatdata`.

No teste no ROG Ally, o DXVK registrou um buffer de 1920 × 1080 em tela cheia. O contador indicou 60 FPS nas nove leituras durante 24 segundos de uma corrida no Coast 2 Coast.

O repositório distribui apenas o script e a configuração. Use seus próprios arquivos do jogo.
