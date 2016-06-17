class Wena::Translator
	def initialize(language = 'es-CL')
		@language = language
		@dictionary = YAML::load_file(File.join(__dir__, 'translations.yml'))
	end

	def translations
		@dictionary[@language]
	end
end