class NameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if 'パRails輪読会' == value
      # invalidはデフォルトなので省略可能(だから省略した)
      # `evant.rb`でvalidatesを設定するときに　name: {message: 'xxxxxx'}　を設定するとoptionsに入る
      # name: {message: 'xxxxx'}を指定しないと　ショートサーキットにより'うおおおおおお'がエラーメッセージに入る！
      record.errors.add(attribute, options[:message] || 'うおおおおお')
    end
  end
end
