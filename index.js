"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const exec_1 = require("@actions/exec");
const retrieveSecrets = () => {
    (0, exec_1.getExecOutput)(`./script.sh`);
};
const installCli = () => {
    (0, exec_1.getExecOutput)(`./install.sh`);
};
installCli();
retrieveSecrets();
