import React, {useState} from 'react'
import {connect} from 'react-redux'
import SignInForm from './SignInForm'


function SignInFormContainer() {

    const primarySignInFormValue = {
        login: '',
        password: ''
    }
    const [signInFormValue, setSignInFormValue] = useState(primarySignInFormValue)

    const changeForm = value => setSignInFormValue(value)
    const resetForm = () => setSignInFormValue(primarySignInFormValue)
    const submitForm = () => {}

    return <SignInForm
        changeForm={changeForm}
        resetForm={resetForm}
        submitForm={submitForm}
        formValue={signInFormValue}
    />
}

export default connect(
    (state) => ({}),
    {}
)(SignInFormContainer)