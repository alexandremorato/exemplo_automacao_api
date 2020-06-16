Dado("que exista um empregado cadastrado") do
  data = create_mass_data
  @response = create_employee(data)
  @status_code = @response.code
  @id = @response["data"]["id"]
end

Quando("realizar a exclusão de um empregado") do
  @response = delete_employee(@id)
end

Quando("tentar excluir novamente o empregado") do
  @response = delete_employee(@id)
end

Então("a exclusão deve ser realizado com sucesso") do
  expect(@response.code).to eql 200
  expect(@response.body).to match("\"status\":\"success\",\"message\":\"successfully! deleted Records\"")
  employees = get_employees
  expect(employees).not_to match("\"id\":#{@id}")
end

Então("o serviço não deve permitir a exclusão") do
  expect(@response.code).to eql 200
  expect(@response.body).to match("\"status\":\"failed\",\"message\":\"Error! Id must be greater than zerp\"}")
end