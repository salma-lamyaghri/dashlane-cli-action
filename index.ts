import { getExecOutput } from "@actions/exec";

const retrieveSecrets = () => {
  getExecOutput(`./script.sh`);
};

const installCli = () => {
  getExecOutput(`./install.sh`);
};

installCli();
retrieveSecrets();
