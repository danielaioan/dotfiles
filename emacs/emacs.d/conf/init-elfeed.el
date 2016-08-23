(require 'elfeed)
;;(require 'elfeed-goodies)

;;(elfeed-goodies/setup)

(global-set-key (kbd "C-x w") 'elfeed)

(setq elfeed-feeds
      '(
        ;; Programing Languages
        ("http://www.rubyflow.com/rss" Ruby)

        ;; News
        ("http://rss.terra.com.br/0,,EI1176,00.xml" News)
        ("http://rss.terra.com.br/0,,EI238,00.xml" News)
        ("http://rss.terra.com.br/0,,EI1497,00.xml" News)
        ("http://imagens.globoradio.globo.com/cbn/rss/home/home.xml" News)
        ("http://www.estadao.com.br/rss/economia.xml" News)
        ("http://www.estadao.com.br/rss/ultimas.xml" News)
        ("http://www.estadao.com.br/rss/tecnologia.xml" News)
        ("http://www.estadao.com.br/rss/esportes.xml" News)
        ("http://www.estadao.com.br/rss/internacional.xml" News)
        ("http://feeds.folha.uol.com.br/folha/informatica/rss091.xml" News)
        ("http://feeds.folha.uol.com.br/folha/colunas/futebolnarede/rss091.xml" News)
        ("http://feeds.folha.uol.com.br/folha/turismo/rss091.xml" News)
        ("http://g1.globo.com/dynamo/brasil/rss2.xml" News)
        ("http://g1.globo.com/dynamo/carros/rss2.xml" News)
        ("http://g1.globo.com/dynamo/ciencia-e-saude/rss2.xml" News)
        ("http://g1.globo.com/dynamo/economia/rss2.xml" News)
        ("http://g1.globo.com/dynamo/mundo/rss2.xml" News)
        ("http://g1.globo.com/dynamo/politica/mensalao/rss2.xml" News)
        ("http://g1.globo.com/dynamo/tecnologia/rss2.xml" News)
        ("http://g1.globo.com/dynamo/sp/presidente-prudente-regiao/rss2.xml" News)
        ("http://g1.globo.com/dynamo/sao-paulo/rss2.xml" News)
        ("http://tecnologia.uol.com.br/ultnot/index.xml" News)
        ("http://rss.carros.uol.com.br/ultnot/index.xml" News)
        ("http://cinema.uol.com.br/ultnot/index.xml" News)
        ("http://rss.uol.com.br/feed/economia.xml" News)
        ("http://rss.uol.com.br/feed/noticias.xml" News)
        ("http://rss.home.uol.com.br/index.xml" News)
        ("http://rss.home.uol.com.br/index.xml" News)
        ("http://rss.home.uol.com.br/index.xml" News)
        ("http://rss.home.uol.com.br/index.xml" News)
      )
)

(setq-default elfeed-search-filter "@1-week-ago +unread ")

;; Entries older than 2 weeks are marked as read
(add-hook 'elfeed-new-entry-hook
          (elfeed-make-tagger :before "2 weeks ago"
                              :remove 'unread))

(provide 'init-elfeed)
