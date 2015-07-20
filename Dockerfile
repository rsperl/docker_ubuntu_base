from ubuntu:15.10

RUN apt-get update -y --fix-missing; \
        apt-get upgrade -y; \
        apt-get install -y --fix-missing \
            cpanminus \
            linux-libc-dev \
            zsh \
            cmake \
            pkg-config \
            build-essential \
            openssl \
            libcrypt-ssleay-perl \
            libnet-ssleay-perl \
            libexpat1-dev \
            mysql-common \
            mysql-client \
            libmysqlclient-dev \
            python \
            ruby

RUN cpanm --mirror http://mirrors.ibiblio.org/CPAN/ --mirror-only --notest \
  App::cpanminus \
  Test::Most \
  Regexp::Common::Email::Address \
  Class::Unload \
  MIME::Lite \
  Data::Printer \
  Time::Moment \
  DateTime \
  DBIx::Connector \
  Log::Dispatch::Email::MIMELite \
  Regexp::Common \
  Regexp::Common::Email::Address \
  Mojolicious \
  Mojolicious::Plugin::YamlConfig \
  MojoX::Log::Log4perl \
  Net::STOMP::Client \
  DBI DBD::mysql \
  JSON \
  JSON::XS \
  MIME::Base64 \
  Moose \
  namespace::autoclean \
  Net::LDAP \
  Net::OpenSSH \
  Readonly \
  Regexp::Common \
  String::Random \
  Try::Tiny \
  Unicode::Map8 \
  XML::Simple \
  YAML::XS \
  YAML
