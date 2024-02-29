import * as exec from "@actions/exec";

const retrieveSecrets = async () => {
  await exec.getExecOutput(`./script.sh`);
};

const installCli = async () => {
  await exec.getExecOutput(`./install.sh`);
};

installCli();
retrieveSecrets();
