import React from 'react'
import {BrowserRouter} from 'react-router-dom'
import Loader from './components/utils_components/Loader'
import Header from './components/header/Header'
import AuthForm from './components/auth_form/AuthForm'
import AsideContainer from './components/main/aside/AsideContainer'

export default function App(props) {

    const {authId, loading, onSubmitAuth} = props

    if(loading)
        return <Loader />
    if(!authId)
        return <AuthForm onSubmitAuth={onSubmitAuth}/>
    return (
        <BrowserRouter>
            <>
                <Header headerLogo={'ITime'}/>
                <main>
                    <AsideContainer />
                </main>
            </>
        </BrowserRouter>
    )
}
