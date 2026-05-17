alias reload!='. ~/.zshrc'

alias tf='terraform'
alias cls='clear' # Good 'ol Clear Screen command
alias kctl='aws-vault exec andrea -- kubectl'
alias cl-per='CLAUDE_CONFIG_DIR=~/.claude-personal claude'
alias tf_reapply='aws-vault exec andrea --no-session -- terraform apply -var="docker_image=$(kctl -n $NAMESPACE get $DEPLOYMENT -o '"'"'jsonpath={.spec.template.spec.containers[*].image}'"'"')"' 
