gem 'Mxx_ru', '>= 1.3.0'

require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target {
  include_path './asio/include', Mxx_ru::Cpp::Target::OPT_UPSPREAD

  define 'ASIO_HAS_STD_CHRONO', Mxx_ru::Cpp::Target::OPT_UPSPREAD
  define 'ASIO_STANDALONE', Mxx_ru::Cpp::Target::OPT_UPSPREAD
  define 'ASIO_DISABLE_STD_STRING_VIEW', Mxx_ru::Cpp::Target::OPT_UPSPREAD

  if "mswin" == toolset.tag( "target_os" )
    define '_WIN32_WINNT=0x0600', Mxx_ru::Cpp::Target::OPT_UPSPREAD
  end
}
