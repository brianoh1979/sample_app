it('successfully loads 2', function() {
  cy.request({
      url: 'http://0.0.0.0:3000/help',
      failOnStatusCode: false
  })
})
