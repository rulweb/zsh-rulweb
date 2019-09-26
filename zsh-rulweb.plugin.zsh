#Настройки для Composer
_composer_get_command_list () {
	composer --raw --no-ansi list | sed "s/[[:space:]].*//g"
}

_composer () {
	compadd `_composer_get_command_list`
}

compdef _composer composer
compdef _composer c

alias c='composer'
alias composer='composer'

#Настройки для Laravel Artisan
_laravel_artisan_get_command_list () {
	php artisan --raw --no-ansi list | sed "s/[[:space:]].*//g"
}

_laravel_artisan () {
  if [ -f artisan ]; then
    compadd `_laravel_artisan_get_command_list`
  fi
}

compdef _laravel_artisan artisan
compdef _laravel_artisan a

alias a='php artisan'
alias artisan='php artisan'
