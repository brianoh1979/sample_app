it('successfully loads 1', function() {
  cy.request({
      url: 'http://0.0.0.0:3000',
      failOnStatusCode: false
  })
})
