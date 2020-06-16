module HelpersRequests

    def get_employee(data)
        response = HTTParty.get(
            "#{$end_point}/employee/#{data['ID']}", 
            headers: { 'Content-Type' => 'application/json', 'Cookie' => 'PHPSESSID=ba8dbffb42196bf64c23527af91c89fb'}
        )
        response
    end
    
    def create_employee(data)
        response = HTTParty.post(
            "#{$end_point}/create",
            headers: { 
            'Content-Type' => 'application/json', 
            'Cookie' => 'ezCMPCCS=true; PHPSESSID=e98d0c3ad8815b51150a192003487b6f; ezoadgid_133674=-1; ezoref_133674=; ezoab_133674=mod55-c; active_template::133674=pub_site.1590682608'
            },
            body: {
                "name": data['Nome'],
                "salary": data['Salário'],
                "age": data['Idade']
            }.to_json
        )
        response
    end
    
    def get_employees()
        response = HTTParty.get(
            "#{$end_point}/employees", 
            headers: { 
            'Content-Type' => 'application/json', 
            'Cookie' => 'PHPSESSID=e98d0c3ad8815b51150a192003487b6f; Path=/; Domain=dummy.restapiexample.com;'
            }
        )
        response.body
    end

    def delete_employee(data)
        response = HTTParty.delete(
            "#{$end_point}/delete/#{data}",
            headers: { 
            'Content-Type' => 'application/json', 
            'Cookie' => 'PHPSESSID=e98d0c3ad8815b51150a192003487b6f; Path=/; Domain=dummy.restapiexample.com;'
            }
        )
        response
    end    
end    