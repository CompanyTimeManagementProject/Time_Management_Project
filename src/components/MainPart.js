import React from 'react'
import {NavLink, useHistory} from 'react-router-dom'
import {Box, Button, Header, Heading} from 'grommet'

export default function MainPart() {
    const history = useHistory()

    return <Header
        level={5}
        pad={'medium'}
        background={'brand'}
    >
        <Heading>
            <span style={{color: '#dfb6c4'}}>IT</span>ime
        </Heading>
        <Box
            direction={'row'}
        >
            <NavLink
                to={'/sign-in'}
            >
                <Button
                    label={'Sign in'}
                    color={'light-1'}
                    onClick={() => history.push('/sign-in')}
                />
            </NavLink>
        </Box>
    </Header>
}