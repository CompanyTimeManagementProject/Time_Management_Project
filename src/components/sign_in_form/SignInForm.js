import React from 'react'
import {Box, Button, Form, FormField, Heading, TextInput} from 'grommet'

export default function SignInForm({changeForm, resetForm, submitForm, formValue}) {
    return <Box
        background={'light-2'}
        width={'medium'}
        margin={{horizontal: 'auto', vertical: 'medium'}}
        round={'medium'}
        elevation={'medium'}
        pad={'small'}
        fill={'vertical'}
    >
        <Heading
            textAlign={'center'}
            margin={'medium'}
        >
            Log in
        </Heading>
        <Form
            onSubmit={submitForm}
            onReset={resetForm}
            onChange={changeForm}
            value={formValue}
        >
            <FormField
                label={'Login'}
                name={'login'}
                required={true}
            >
                <TextInput
                    name={'login'}
                />
            </FormField>

            <FormField
                label={'Password'}
                name={'password'}
                required={true}
            >
                <TextInput
                    name={'password'}
                />
            </FormField>

            <Box
                direction={'row'}
                flex={true}
                justify={'between'}
                pad={'medium'}
            >
                <Button
                    label={'Log in'}
                    primary={true}
                    type={'submit'}
                />
                <Button
                    label={'clear'}
                    secondary={true}
                    type={'reset'}
                />
            </Box>
        </Form>
    </Box>
}