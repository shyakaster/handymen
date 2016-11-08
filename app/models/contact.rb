class Contact < MailForm::Base
    attribute :name, :validate => true
    attribute :email, :validate => /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
    attribute :phone, :validate => true
    attribute :message, :validate => true
    attribute :nickname, :captcha => true
    def headers
        {
        :subject => "Info from BrandField Advertising",
        :to => "nkusialex@gmail.com",
        :from => %("#{contacts_name}" <#{contacts_email}>)
        }
    end
end