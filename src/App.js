import React from 'react'
import {Route, Switch} from 'react-router-dom'
import SignInFormContainer from './components/sign_in_form/SignInFormContainer'
import MainPart from './components/MainPart'

export default function App() {
    return (
        <Switch>
            <Route
                path={'/'}
                exact={true}
                render={() => <MainPart/>}
            />
            <Route
                path={'/sign-in'}
                render={() => <SignInFormContainer/>}
            />
        </Switch>
    )
}
