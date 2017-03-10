def reformat_languages(languages)
  # your code here
  result = {}
  languages.each do |type, type_languages|
    type_languages.each do|language_name, language_obj|
      if result.key?(language_name)
        result[language_name][:style] = result[language_name][:style] << type
      else
        style = []
        result[language_name] = {
          :type => languages[type][language_name][:type],
          :style => style << type
        }
      end
    end
  end
  result
end
