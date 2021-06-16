import React from 'react'
import {NavLink, withRouter} from 'react-router-dom'

//Стили неявно используются
import * as style from './aside.module.css'

function Aside({accessRight, location}) {
    return (
        <aside>
            <ul>
                <NavLink to='/profile/'><li>Profile</li></NavLink>
                <NavLink
                    to='/projects/1'
                    className={
                        location.pathname.includes('put-project')
                        || location.pathname.includes('projects')
                        || location.pathname.includes('single_project')
                            ? 'active'
                            : ''
                    }>
                    <li>Projects</li>
                </NavLink>
                {
                    accessRight
                        ? <NavLink
                            to='/developers/1'
                            className={location.pathname.includes('/developers/') ? 'active' : ''}
                        ><li>Developers</li></NavLink>
                        : null
                }
                <NavLink
                    to='/notifications/1'
                    className={location.pathname.includes('/notifications/') ? 'active' : ''}
                >
                    <li>Notifications</li>
                </NavLink>
            </ul>
        </aside>
    )
}

export default withRouter(Aside)