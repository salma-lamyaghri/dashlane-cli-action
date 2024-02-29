import { getExecOutput } from "@actions/exec";

const retrieveSecrets = async () => {
  await getExecOutput(`./script.sh`);
};

const installCli = async () => {
  await getExecOutput(`./install.sh`);
};

await installCli();
await retrieveSecrets();
