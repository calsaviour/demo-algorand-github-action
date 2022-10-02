const core = require('@actions/core');
const exec = require('@actions/exec');


async function run() {
    try {
        const command = core.getInput('command');
        const src = __dirname;
        await exec.exec(`${src}/build_pyteal.sh -c ${command}`);
    } catch (error) {
        core.setFailed(error.message);
    }
}

run();