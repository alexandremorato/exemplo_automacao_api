Dado("que não exista um empregado cadastrado no serviço") do
end
  
Quando("realizar o cadastro de um novo empregado com os seguintes dados:") do |table|
  @data = table.rows_hash
  @response = create_employee(@data)
end

Então("o cadastro deve ser realizado com sucesso") do
  expect(@response.code).to eql 200
  expect(@response["data"]["name"]).to eql @data['Nome']
  expect(@response["data"]["salary"]).to eql @data['Salário']
  expect(@response["data"]["age"]).to eql @data['Idade']
  employees = get_employees
  expect(employees).to match("\"id\":#{@response["data"]["id"]}")
  expect(employees).to match("\"employee_age\":\"#{@response["data"]["age"]}\"")
  expect(employees).to match("\"employee_salary\":\"#{@response["data"]["salary"]}\"")
  expect(employees).to match("\"employee_name\":\"#{@response["data"]["name"]}\"")
end