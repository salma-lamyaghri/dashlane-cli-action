import { getExecOutput } from "@actions/exec";

const main = () => {
  getExecOutput(`./script.sh`);
};

main();
