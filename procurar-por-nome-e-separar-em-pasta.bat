@echo off
setlocal EnableDelayedExpansion

REM Defina o caminho de origem e o caminho de destino
set "origem=PATH_ORIGEM"
set "destino=PATH_DESTINO"

REM Para cada nome fornecido, acrescente -nfe.xml ao nome do arquivo
for %%i in (
    "NOME_DO_ARQUIVO"
    REM
) do (
    set "nomeArquivo=%%i-nfe.xml"
    set "caminhoOrigem=%origem%\!nomeArquivo!"
    set "caminhoDestino=%destino%\!nomeArquivo!"

    REM Verifique se o arquivo existe na origem antes de copiar
    if exist "!caminhoOrigem!" (
        echo Copiando !caminhoOrigem! para !caminhoDestino!
        copy "!caminhoOrigem!" "!caminhoDestino!"
    ) else (
        echo Arquivo !caminhoOrigem! nao encontrado.
        echo Valor da variavel caminhoOrigem: !caminhoOrigem!
    )
)

endlocal
pause
