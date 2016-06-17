require 'yaml'
class Wena
	attr_accessor :name, :t
	def initialize(language = 'es-CL')
		@t = Translator.new().translations
	end

  def wena
    wn @t['wena']
  end

  def wn(name = @t['wn'])
  	sanitize name
  	"#{@t['wena'].capitalize} #{@name}"
  end

  def ql(name = @t['wn'])
  	sanitize name
  	"#{wn @name} #{@t['ql']}"
  end

  protected
  def sanitize(name)
  	name == '' or name.nil? ? @name = @t['wn'] : @name = name
  end
end

require 'wena/translator'