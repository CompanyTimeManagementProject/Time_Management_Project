import * as jwt from 'jsonwebtoken'

class AuthService {
    private generateToken(user) {

        const data = {
            _id: user._id,
            name: user.name,
            email: user.email
        };
        const signature = 'MySuP3R_z3kr3t';
        const expiration = '6h';

        return jwt.sign({data,}, signature,  {expiresIn: expiration});
    }
}