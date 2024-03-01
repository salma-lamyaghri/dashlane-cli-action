import { getExecOutput } from "@actions/exec";

const main = () => {
  getExecOutput(`./main.sh`);
};

main();
