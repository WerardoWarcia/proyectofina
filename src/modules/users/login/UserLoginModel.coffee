class UserLoginModel extends Bb.Model
    defaults: {
        email: 'homero.sousa@gmail.com'
        password: 'sousa104'
    }
    url: "#{process.env.SERVER_URL}/login.json"

module.exports = UserLoginModel
