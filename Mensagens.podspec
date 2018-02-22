#
# Be sure to run `pod lib lint Mensagens.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  # Nome do Pod
  s.name             = 'Mensagens'
  
  # Versão Atual do Pod
  s.version          = '0.1.0'
  
  # Breve descrição, deve ser menor do que description e não pode ser a padrão do CocoaPods
  s.summary          = 'Projeto para aula 3 da Quaddro.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

# Descrição completa do Pod, deve ser sempre maior do que o Summary e também não pode ser a padrão do CocoaPods
  s.description      = <<-DESC
TODO: Projeto para aula 3 da Quaddro de exemplo do CocoaPods.
                       DESC

# Verificar se o NOME_USUARIO do GitHub é o mesmo que o seu. https://github.com/NOME_USUARIO/NOME_POD
  s.homepage         = 'https://github.com/brendosaldanha/Mensagens'
  
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  # Verificar se o NOME_USUARIO e e-mail são o mesmos do GitHub
  s.author           = { 'brendosaldanha' => 'brendo_saldanha@hotmail.com' }
  
  #Verificar se o NOME_USUARIO do GitHub é o mesmo que o seu. https://github.com/NOME_USUARIO/NOME_POD.git
  s.source           = { :git => 'https://github.com/brendosaldanha/Mensagens.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # Versão mínima do iOS para execução do Pod
  s.ios.deployment_target = '9.3'

  # Caminho onde estão as classes que serão compartilhadas no Pod
  s.source_files = 'Mensagens/Classes/**/*'
  
  # CAMINHO ONDE ESTÃO OS ARQUIVOS DE ASSETS, IMAGENS, JSONS, TEXTOS, ETC...
  # s.resource_bundles = {
  #   'Mensagens' => ['Mensagens/Assets/*.png']
  # }

  # CAMINHO DOS ARQUIVOS DE HEADER (OBJECTIVE-C) PÚBLICOS
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # DEFINIR QUAIS FRAMEWORKS DE SISTEMA SEU POD UTILIZA
  # s.frameworks = 'UIKit', 'MapKit'
  # DEFINIR QUAIS PODS DE TERCEIROS SEU POD UTILIZA
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # Definir a versão do Swfit
  s.swift_version = '>=4.0'
end
