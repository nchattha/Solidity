
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  module.exports = {
    rpc: {
		    host: "localhost",
        network_id: "*",
        gasLimit: 672197500000,
		    gas: 672197,
		    port: 8545
	  },
      networks: {
            development: {
                host: "localhost",
                port: 8545,
                network_id: "*",
                gas: 200000,
                gasPrice: 10000000000,
                gasLimit: 70000000

            },
            live: {
                host: "localhost",
                port: 8545,
                network_id: "*",
                gas: 6721975
            }
        },
        mocha: {
          reporter: 'eth-gas-reporter',
          reporterOptions : {
            currency: 'CHF',
            gasPrice: 21
          }
        }
  };
