name             'neo4j-3'
maintainer       'João Pina'
maintainer_email 'me@tomahock.com'
license          'Apache 2.0'
description      'Installs/Configures neo4j 3'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url       'https://github.com/tomahock/neo4j-3-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/tomahock/neo4j-3-cookbook' if respond_to?(:source_url)
version          '0.0.10'

supports 'amazon'
supports 'centos', '>= 6.6'
supports 'debian', '>= 7.8'
supports 'redhat', '>= 6.6'
supports 'ubuntu', '>= 12.04'

depends 'apt', '~> 2.7'
depends 'java', '~> 1.31'
depends 'yum', '~> 3.2'
