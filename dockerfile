FROM Perl:latest

MAINTAINER ben.whosgonna.com@gmail.com

EXPOSE 5000

RUN cpanm --quiet \
        Dancer2 \
        \
        Dancer2::Template::Haml \
        Dancer2::Template::HTCompiled \
        Dancer2::Template::Mason2 \
        Dancer2::Template::MojoTemplate \
        Dancer2::Template::TemplateFlute \
        Dancer2::Template::TemplateToolkit \
        Dancer2::Template::TextTemplate \
        \
        Dancer2::Logger::Console::Colored \
        Dancer2::Logger::File::RotateLogs \
        Dancer2::Logger::Syslog \
        \
        Dancer2::Serializer::CBOR \
        \
        Dancer2::Session::CGISession \
        Dancer2::Session::Cookie \
        Dancer2::Session::DBIC \
        Dancer2::Session::JSON \
        Dancer2::Session::Memcached \
        Dancer2::Session::PSGI \
        Dancer2::Session::Redis \
        \
        Dancer2::Plugin::Adapter \
        Dancer2::Plugin::Ajax \
        Dancer2::Plugin::AppRole::Helper \
        Dancer2::Plugin::Articulate \
        \
        Dancer2::Plugin::Auth::Extensible \
        Dancer2::Plugin::Auth::Extensible::Provider::DBIC \
        Dancer2::Plugin::Auth::Extensible::Provider::LDAP \
        Dancer2::Plugin::Auth::Extensible::Provider::Database \
        Dancer2::Plugin::Auth::Extensible::Provider::ActiveDirectory \
        Dancer2::Plugin::Auth::Extensible::Provider::Usergroup \
        Dancer2::Plugin::Auth::HTTP::Basic::DWIW \
        Dancer2::Plugin::Auth::OAuth \
        Dancer2::Plugin::Auth::Tiny \
        \
        Dancer2::Plugin::BrowserDetect \
        Dancer2::Plugin::Cache::CHI \
        Dancer2::Plugin::Captcha \
        Dancer2::Plugin::Chain \
        Dancer2::Plugin::ConditionalCaching \
        Dancer2::Plugin::Database \
        Dancer2::Plugin::DataTransposeValidator \
        Dancer2::Plugin::DBIC \
        Dancer2::Plugin::Deferred \
        Dancer2::Plugin::Email \
        Dancer2::Plugin::Emailesque \
        Dancer2::Plugin::Feed \
        Dancer2::Plugin::GoogleAnalytics \
        Dancer2::Plugin::Growler \
        Dancer2::Plugin::JWT \
        Dancer2::Plugin::LogContextual \
        Dancer2::Plugin::LogReport \
        Dancer2::Plugin::Model \
        Dancer2::Plugin::Multilang \
        Dancer2::Plugin::Negotiate \
        Dancer2::Plugin::ParamKeywords \
        Dancer2::Plugin::Passphrase \
        Dancer2::Plugin::Path::Class \
        Dancer2::Plugin::ProgressStatus \
        Dancer2::Plugin::Queue \
        Dancer2::Plugin::Queue::MongoDB \
        Dancer2::Plugin::reCAPTCHA \
        Dancer2::Plugin::Redis \
        Dancer2::Plugin::Res \
        Dancer2::Plugin::REST \
        Dancer2::Plugin::RootURIFor \
        Dancer2::Plugin::RoutePodCoverage \
        Dancer2::Plugin::Sixpack \
        Dancer2::Plugin::Syntax::GetPost \
        Dancer2::Plugin::UnicodeNormalize \
    \ 
    && rm -rf ~/.cpanm/ 


ENTRYPOINT /bin/sh
