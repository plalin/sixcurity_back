gem 'Mxx_ru', '>= 1.6.8'

require 'mxx_ru/cpp'

MxxRu::Cpp::lib_target {

	target( 'lib/hodejs_http_parser' )

	include_path( 'nodejs/http_parser', MxxRu::Cpp::Target::OPT_UPSPREAD )

	define( "HTTP_PARSER_STRICT=0", MxxRu::Cpp::Target::OPT_UPSPREAD )

	c_sources Dir[ 'nodejs/http_parser/*.c' ].map{|d| "../../#{d}"}
}

