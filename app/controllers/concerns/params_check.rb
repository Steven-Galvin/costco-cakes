module ParamsCheck
  def params_check object, params
    params.each do |key, value|
      if object["#{key}"] === ""
        object["#{key}"] = "No #{key}"
      end
    end
    params
  end
end
