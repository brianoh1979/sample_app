it('successfully loads 3', function() {
  cy.request({
      url: 'http://0.0.0.0:3000/login',
      failOnStatusCode: false
  })
})
