// An example configuration file.
exports.config = {
	// The address of a running selenium server.
	seleniumAddress: 'http://localhost:4444/wd/hub',

	// Capabilities to be passed to the webdriver instance.
	capabilities: {
		'browserName': 'chrome'
	},

	// Spec patterns are relative to the location of the spec file.
	suites: {
		all: '.tmp/e2e/**/*-spec.js'
	},

	// Spec patterns are relative to the location of the spec file.
	specs: ['.tmp/e2e/*.js'],

	// Options to be passed to Jasmine-node.
	jasmineNodeOpts: {
		showColors: true
	}
};
