'use strict';

const fetch = require('node-fetch');

const API_KEY = 'dslabalwayswinning';
const MIROTALK_URL = 'https://mirotalk.up.railway.app/api/v1/meeting';

function getResponse() {
    return fetch(MIROTALK_URL, {
        method: 'POST',
        headers: {
            authorization: API_KEY,
            'Content-Type': 'application/json',
        },
    });
}

getResponse().then(async (res) => {
    console.log('Status code:', res.status);
    const data = await res.json();
    console.log('meeting:', data.meeting);
});
