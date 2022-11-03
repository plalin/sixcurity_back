gem 'Mxx_ru', '>= 1.3.0'

require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target{
  include_path( "./rapidjson/include", Mxx_ru::Cpp::Target::OPT_UPSPREAD )

  define( "RAPIDJSON_HAS_STDSTRING", Mxx_ru::Cpp::Target::OPT_UPSPREAD )
  define( "RAPIDJSON_HAS_CXX11_RVALUE_REFS", Mxx_ru::Cpp::Target::OPT_UPSPREAD )
}
