it('successfully loads 4', function() {
  cy.request({
      url: 'http://0.0.0.0:3000/contact',
      failOnStatusCode: false
  })
})
