Pequenos scripts para automatizar alguns processos

* rmtilde.sh: remover arquivos de backup do emacs
* texaccent.sed: reformatar arquivos sed para renderizar caracteres diacríticos sem problemas
* texadapt: aplicar o texaccent.sed de forma mais conveniente 
* notes_to_anki.py: formatar anotações em arquivos de texto para um formato .csv próprio para importação pelo Anki
* ankidapt.sh: igual ao notes_to_anki.py, mas fazendo uso de unixtools
* ever2org_changename.sh: editar o nome de arquivos importados do evernote usando o [EverOrg](https://github.com/mgmart/EverOrg) para um formato que me é mais agradável.
* socbloc: bloquear e desbloquear sites dentro de um intervalo de linhas em /etc/hosts/
* runs: simplesmente uma abreviação para o runserver do Django
* getgcalvar: extrai determinadas envvars do .bashrc para usar no setup do gcal no emacs
* paudio: reinicia o pulseaudio
* replace_in_history: template para remoção de conteúdo sensitivo de um repositório git
* change-audio-source: alterna entre fontes de input de áudio -- ora entre o microfone, ora entre o output (envia o output para o input, para que terceiros possam ouvir os sons do computador quando necessário, e.g., numa conferência online)
