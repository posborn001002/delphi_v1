rails generate scaffold ActionResult number:integer:index:uniq action:string  result:string -f
rails generate scaffold PointOfPain description:text PTWorkshop:belongs_to -f
rails generate scaffold PTWorkshop date:date Person:references  -f
rails generate scaffold CustomerJob job_reference:string name:string description:text status:string -f
rails generate scaffold Update DateLookup:references Person:references attachment:string text:text -f
rails generate scaffold Person password:digest first_name:string last_name:string email:string telephone:string Organization:references job_title:string -f
rails generate scaffold CustomerJobActionResults CustomerJob:references ActionResults:references --force-plural -f
rails generate scaffold ToeTag priority:integer Person:references -f
rails generate scaffold Metric name:string datatype:string -f
rails generate scaffold JobProgress CustomerJob:references ActionResult:references Lookup:references:polymorphic -f
rails generate scaffold Lookup name:string datatype:string type:string -f
rails generate scaffold Measurement DateLookup:references Metric:references:index value:decimal -f
rails generate scaffold PainObservation PointOfPain:references:index JobProgress:references:index pass_fail:integer -f
rails generate scaffold DateLookup date:date:index:uniq day_of_month:integer month:integer quarter:integer year:integer week_of_year:integer week_of_quarter:integer fiscal_year:integer fiscal_month:integer fiscal_quarter:integer fiscal_week_of_year:integer fiscal_week_of_quarter:integer -f
rails generate scaffold Organization name:string address1:string address2:string city:string state:string country:string -f