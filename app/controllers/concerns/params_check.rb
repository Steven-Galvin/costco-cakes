module ParamsCheck
  def params_check object, params
    params.each do |key, value|
      if object["#{key}"] === ""
        @sub = key.gsub(/_/, ' ')
        object["#{key}"] = "No #{@sub}"
      end
    end
    params
  end
end
