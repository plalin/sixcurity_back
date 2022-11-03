#!/usr/bin/ruby
gem 'Mxx_ru', '>= 1.3.0'

require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target {

  include_path( 'fmt/include', MxxRu::Cpp::Target::OPT_UPSPREAD )

  define( 'FMT_HEADER_ONLY', MxxRu::Cpp::Target::OPT_UPSPREAD )
}
