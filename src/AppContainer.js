import {connect} from 'react-redux'
import React, {useState} from 'react'
import App from './App'
import * as selectors from './redux/selectors'

function AppContainer(props) {

    const {authId} = props
    const [loading, setLoading] = useState(false)

    return <App
        authId={authId}
        loading={loading}
        onSubmitAuth={values => {}}
    />
}

function mapStateToProps(state) {
    return {
        authId: selectors.authIdSelector(state)
    }
}

export default connect(mapStateToProps, {

})(AppContainer)