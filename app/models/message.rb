class Message < ActiveRecord::Base
    #名前は須入力かつ20文字以内
    validates :name, length: {maximum: 20}, presence: true
    #内容は必須入力かつ二文字以上３０文字以内
    validates :body, length: {minimum: 2, maximum: 30 }, presence: true
    #年齢は必須入力かつ二文字以上150文字以内
    validates :age, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to:150 }, presence: true
end
