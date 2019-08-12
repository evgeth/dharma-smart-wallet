var Web3 = require('web3')

module.exports = {
  networks: {
    development: {
      provider: new Web3('ws://localhost:8545'),
      network_id: "*"
    },
    coverage: {
      provider: new Web3('ws://localhost:8555'),
      network_id: '*',
    },
  },
  compilers: {
    solc: {
       version: "0.5.10",
       settings: {
        optimizer: {
          enabled: true,
          runs: 10000
        },
        evmVersion: "petersburg"
      }
    }
  }
}
