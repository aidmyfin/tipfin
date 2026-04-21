tipfin table
The ID of this table is: 936442

Fields
Each row in the tipfin table contains the following fields.

ID	Name	Type	Compatible filters
field_8136507	name	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts single line text.
field_8136508	lastname	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136509	loanAmount	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts single line text.
field_8136510	Email	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136511	Phonenumber	number	equalnot_equalcontainscontains_nothigher_thanhigher_than_or_equallower_thanlower_than_or_equalis_even_and_wholeemptynot_empty
Accepts a positive number.
field_8136512	IdDoc	array	filename_containshas_file_typefiles_lower_thanemptynot_empty
Accepts an array of objects containing at least the name of the user file. Alternatively, you can provide a comma-separated list of file names or an array of file names. You can use the "File uploads" endpoints to upload the file. The response of those calls can be provided directly as object here. The endpoints can be found in the left sidebar.
field_8136513	Bankstate	array	filename_containshas_file_typefiles_lower_thanemptynot_empty
Accepts an array of objects containing at least the name of the user file. Alternatively, you can provide a comma-separated list of file names or an array of file names. You can use the "File uploads" endpoints to upload the file. The response of those calls can be provided directly as object here. The endpoints can be found in the left sidebar.
field_8136514	employ	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136515	income	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136516	loanType	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136517	loanPurpose	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136518	loanTearm	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136519	idNo	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts single line text.
field_8136520	reference	number	equalnot_equalcontainscontains_nothigher_thanhigher_than_or_equallower_thanlower_than_or_equalis_even_and_wholeemptynot_empty
Accepts a positive number.
field_8136521	cashcode	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
field_8136522	payproof	string	equalnot_equalcontainscontains_notcontains_worddoesnt_contain_wordlength_is_lower_thanemptynot_empty
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
List fields
To list fields of the tipfin table a GET request has to be made to the tipfin fields endpoint. It's only possible to list the fields if the database token has read, create or update permissions.

Result field properties
id
integer
Field primary key. Can be used to generate the database column name by adding field_ prefix.

name
string
Field name.
table_id
integer
Related table id.
order
integer
Field order in table. 0 for the first field.
primary
boolean
Indicates if the field is a primary field. If true the field cannot be deleted and the value should represent the whole row.

type
string
Type defined for this field.
read_only
boolean
Indicates whether the field is a read only field. If true, it's not possible to update the cell value.
description
string
Field description
Some extra properties are not described here because they are type specific.

Copy
GET
https://api.baserow.io/api/database/fields/table/936442/
Request sample
Copy
cURL
curl \
-X GET \
-H "Authorization: Token YOUR_DATABASE_TOKEN" \
"https://api.baserow.io/api/database/fields/table/936442/"
Response sample
Copy
[
    {
        "id": 8136507,
        "table_id": 936442,
        "name": "name",
        "order": 0,
        "type": "text",
        "primary": true,
        "read_only": false,
        "description": "A sample description"
    },
    {
        "id": 8136508,
        "table_id": 936442,
        "name": "lastname",
        "order": 1,
        "type": "long_text",
        "primary": false,
        "read_only": false,
        "description": "A sample description"
    },
    {
        "id": 8136509,
        "table_id": 936442,
        "name": "loanAmount",
        "order": 2,
        "type": "text",
        "primary": false,
        "read_only": false,
        "description": "A sample description"
    }
]
List rows
To list rows in the tipfin table a GET request has to be made to the tipfin endpoint. The response is paginated and by default the first page is returned. The correct page can be fetched by providing the page and size query parameters.

Query parameters
page
optional
integer
Default: 1
Defines which page of rows should be returned.
size
optional
integer
Default: 100
Defines how many rows should be returned per page.
user_field_names
optional
any
When the user_field_names GET parameter is provided and its value is one of the following: y, yes, true, t, on, 1, or empty string, the field names returned by this endpoint will be the actual names of the fields.

If the user_field_names GET parameter is not provided, or if it does not match any of the above values, then all returned field names will be field_ followed by the id of the field. For example field_1 refers to the field with an id of 1.

Additionally when user_field_names is set then the behaviour of the other GET parameters order_by, include and exclude changes. They instead expect comma separated lists of the actual field names instead.

search
optional
string
Default: ''
If provided only rows with data that matches the search query are going to be returned.
order_by
optional
string
Default: 'id'
Optionally the rows can be ordered by fields separated by comma. By default or if prepended with a '+' a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A).

With user_field_names:
order_by should be a comma separated list of the field names to order by. For example if you provide the following GET parameter order_by=My Field,-My Field 2 the rows will ordered by the field called My Field in ascending order. If some fields have the same value, that subset will be ordered by the field called My Field 2 in descending order.

Ensure fields with names starting with a + or - are explicitly prepended with another + or -. E.g +-Name.

The name of fields containing commas must be surrounded by quotes: "Name ,". If the field names contain quotes, then they must be escaped using the \ character. Eg: Name \".

Without user_field_names:
order_by should be a comma separated list of field_ followed by the id of the field to order by. For example if you provide the following GET parameter order_by=field_1,-field_2 the rows will ordered by field_1 in ascending order. If some fields have the same value, that subset will be ordered by field_2 in descending order.

filters
optional
JSON
Rows can optionally be filtered using the same view filters that are available for the views. This parameter accepts a JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.

With user_field_names:
An example of a valid filter tree is the following: {"filter_type": "AND", "filters": [{"field": "Name", "type": "equal", "value": "test"}]}.

Without user_field_names:
For example, if you optionally provide the following GET parameter: {"filter_type": "AND", "filters": [{"field": 1, "type": "equal", "value": "test"}]}

Please note that if this parameter is provided, all other filter__{field}__{filter} will be ignored, as well as the filter_type parameter.

filter__{field}__{filter}
optional
string
Rows can optionally be filtered using the same view filters that are available for the views. Multiple filters may be applied if they follow the same format. The field and filter variables indicate how and where to apply the filter, respectively.

With user_field_names:
For example, if you optionally provide the following GET parameter: filter__Name__equal=test, only rows where the value of Name equals 'test' will be returned. This method is backwards compatible and will check against field_id if it fails on the name.

Without user_field_names:
For example, if you optionally provide the following GET parameter: filter__field_1__equal=test, only rows where the value of field_1 equals 'test' will be returned.

Please note that if the filters parameter is provided, this parameter will be ignored.

A list of all filters can be found here.
filter_type
optional
string
Default: 'AND'
AND: Indicates that the rows must match all the provided filters.
OR: Indicates that the rows only have to match one of the filters.
This works only if two or more filters are provided.

include
optional
string
All the fields are included in the response by default. You can select a subset of fields to include by providing the include query parameter.

With user_field_names:
include should be a comma separated list of field names to be included in results. For example if you provide the following GET param: include=My Field,-My Field 2 then only those fields will be included (unless they are explicitly excluded).

The name of fields containing commas must be surrounded by quotes: "Name ,". If the field names contain quotes, then they must be escaped using the \ character. Eg: Name \".

Without user_field_names:
include should be a comma separated list of field_ followed by the id of the field to include in the results. For example: If you provide the following GET parameter include=field_1,field_2 then the fields with id 1 and id 2 then only those fields will be included (unless they are explicitly excluded).

exclude
optional
string
All the fields are included in the response by default. You can select a subset of fields to exclude by providing the exclude query parameter.

With user_field_names:
exclude should be a comma separated list of field names to be excluded from the results. For example if you provide the following GET param: exclude=My Field,-My Field 2 then those fields will be excluded.

The name of fields containing commas must be surrounded by quotes: "Name ,". If the field names contain quotes, then they must be escaped using the \ character. Eg: Name \".

Without user_field_names:
exclude should be a comma separated list of field_ followed by the id of the field to exclude from the results. For example: If you provide the following GET parameter exclude=field_1,field_2 then the fields with id 1 and id 2 will be excluded.

view_id
optional
integer
By default non of the filters and sorts outside of the ones defined in the query parameters are applied. You can add the filters and sorts of a view by providing its id in the view_id GET parameter. For example if you provide the following GET parameter view_id=1 then the filters and sorts defined in the view with id 1 will be applied. You can find the view_id in the context menu of any given view. It is the number in brackets behind the view name.

With filter__{field}__{filter}
Both the filter provided in the query parameter and the filters defined in the view will be applied.

With order_by
If order_by is provided then the sort defined in the view will be ignored.

{link_row_field}__join
optional
string
Makes it possible to request a lookup of field values from a target table through existing link row fields. The parameter name has to be the name of an existing link row field, followed by __join. The value should be a list of field names for which we want to lookup additional values. You can provide one or multiple target fields. It is not possible to lookup a value of a link row field in the target table.

With user_field_names:
join should be a comma separated list of field names to be included in results. For example: If you provide the following GET parameter LinkRowField__join=MyField,MyField2 then the values of MyField and My Field2 in the table linked by LinkRowField will be included in the response .

Without user_field_names:
join should be a comma separated list of field_ followed by the id of the field to include in the results. For example: If you provide the following GET parameter field_1__join=field_2,field_3 then the values of field_2 and field_3 in the table linked by field_1 will be included in the response.

Copy
GET
https://api.baserow.io/api/database/rows/table/936442/?user_field_names=true
Request sample
Copy
cURL

User field names
curl \
-X GET \
-H "Authorization: Token YOUR_DATABASE_TOKEN" \
"https://api.baserow.io/api/database/rows/table/936442/?user_field_names=true"
Response sample
Copy
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
{
    "count": 1024,
    "next": "https://api.baserow.io/api/database/rows/table/936442/?page=2",
    "previous": null,
    "results": [
        {
            "id": 0,
            "order": "1.00000000000000000000",
            "name": "string",
            "lastname": "string",
            "loanAmount": "string",
            "Email": "string",
            "Phonenumber": 0,
            "IdDoc": [
                {
                    "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "thumbnails": {
                        "tiny": {
                            "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                            "width": 21,
                            "height": 21
                        },
                        "small": {
                            "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                            "width": 48,
                            "height": 48
                        }
                    },
                    "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "size": 229940,
                    "mime_type": "image/png",
                    "is_image": true,
                    "image_width": 1280,
                    "image_height": 585,
                    "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
                }
            ],
            "Bankstate": [
                {
                    "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "thumbnails": {
                        "tiny": {
                            "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                            "width": 21,
                            "height": 21
                        },
                        "small": {
                            "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                            "width": 48,
                            "height": 48
                        }
                    },
                    "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "size": 229940,
                    "mime_type": "image/png",
                    "is_image": true,
                    "image_width": 1280,
                    "image_height": 585,
                    "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
                }
            ],
            "employ": "string",
            "income": "string",
            "loanType": "string",
            "loanPurpose": "string",
            "loanTearm": "string",
            "idNo": "string",
            "reference": 0,
            "cashcode": "string",
            "payproof": "string"
        }
    ]
}
Get row
Fetch a single tipfin row.

Path parameters
row_id
integer
The unique identifier of the row that is requested.
Query parameters
user_field_names
optional
any
When the user_field_names GET parameter is provided and its value is one of the following: y, yes, true, t, on, 1, or empty string, the field names returned by this endpoint will be the actual names of the fields.

If the user_field_names GET parameter is not provided, or if it does not match any of the above values, then all returned field names will be field_ followed by the id of the field. For example field_1 refers to the field with an id of 1.

Copy
GET
https://api.baserow.io/api/database/rows/table/936442/{row_id}/?user_field_names=true
Request sample
Copy
cURL

User field names
curl \
-X GET \
-H "Authorization: Token YOUR_DATABASE_TOKEN" \
"https://api.baserow.io/api/database/rows/table/936442/{row_id}/?user_field_names=true"
Response sample
Copy
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
{
    "id": 0,
    "order": "1.00000000000000000000",
    "name": "string",
    "lastname": "string",
    "loanAmount": "string",
    "Email": "string",
    "Phonenumber": 0,
    "IdDoc": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "Bankstate": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "employ": "string",
    "income": "string",
    "loanType": "string",
    "loanPurpose": "string",
    "loanTearm": "string",
    "idNo": "string",
    "reference": 0,
    "cashcode": "string",
    "payproof": "string"
}
Create row

batch mode
Create a new tipfin row.

Query parameters
user_field_names
optional
any
When the user_field_names GET parameter is provided and its value is one of the following: y, yes, true, t, on, 1, or empty string, the field names returned by this endpoint will be the actual names of the fields.

If the user_field_names GET parameter is not provided, or if it does not match any of the above values, then all returned field names will be field_ followed by the id of the field. For example field_1 refers to the field with an id of 1.

before
optional
integer
If provided then the newly created row will be positioned before the row with the provided id.
send_webhook_events
optional
any
A flag query parameter that triggers webhooks after the operation, if set to y, yes, true, t, on, 1, or left empty. Defaults to true

Request body schema
name field_8136507
optional
string
Accepts single line text.
lastname field_8136508
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanAmount field_8136509
optional
string
Accepts single line text.
Email field_8136510
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
Phonenumber field_8136511
optional
number
Accepts a positive number.
IdDoc field_8136512
optional
array
Accepts an array of objects containing at least the name of the user file. Alternatively, you can provide a comma-separated list of file names or an array of file names. You can use the "File uploads" endpoints to upload the file. The response of those calls can be provided directly as object here. The endpoints can be found in the left sidebar.
Bankstate field_8136513
optional
array
Accepts an array of objects containing at least the name of the user file. Alternatively, you can provide a comma-separated list of file names or an array of file names. You can use the "File uploads" endpoints to upload the file. The response of those calls can be provided directly as object here. The endpoints can be found in the left sidebar.
employ field_8136514
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
income field_8136515
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanType field_8136516
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanPurpose field_8136517
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanTearm field_8136518
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
idNo field_8136519
optional
string
Accepts single line text.
reference field_8136520
optional
number
Accepts a positive number.
cashcode field_8136521
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
payproof field_8136522
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
Copy
POST
https://api.baserow.io/api/database/rows/table/936442/?user_field_names=true
Request sample
Copy
cURL

User field names
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
curl \
-X POST \
-H "Authorization: Token YOUR_DATABASE_TOKEN" \
-H "Content-Type: application/json" \
"https://api.baserow.io/api/database/rows/table/936442/?user_field_names=true" \
--data '{
    "name": "string",
    "lastname": "string",
    "loanAmount": "string",
    "Email": "string",
    "Phonenumber": 0,
    "IdDoc": [
        {
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png"
        }
    ],
    "Bankstate": [
        {
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png"
        }
    ],
    "employ": "string",
    "income": "string",
    "loanType": "string",
    "loanPurpose": "string",
    "loanTearm": "string",
    "idNo": "string",
    "reference": 0,
    "cashcode": "string",
    "payproof": "string"
}'
Response sample
Copy
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
{
    "id": 0,
    "order": "1.00000000000000000000",
    "name": "string",
    "lastname": "string",
    "loanAmount": "string",
    "Email": "string",
    "Phonenumber": 0,
    "IdDoc": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "Bankstate": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "employ": "string",
    "income": "string",
    "loanType": "string",
    "loanPurpose": "string",
    "loanTearm": "string",
    "idNo": "string",
    "reference": 0,
    "cashcode": "string",
    "payproof": "string"
}
Update row

batch mode
Updates an existing tipfin row.

Path parameters
row_id
integer
The unique identifier of the row that needs to be updated.
Query parameters
user_field_names
optional
any
When the user_field_names GET parameter is provided and its value is one of the following: y, yes, true, t, on, 1, or empty string, the field names returned by this endpoint will be the actual names of the fields.

If the user_field_names GET parameter is not provided, or if it does not match any of the above values, then all returned field names will be field_ followed by the id of the field. For example field_1 refers to the field with an id of 1.

send_webhook_events
optional
any
A flag query parameter that triggers webhooks after the operation, if set to y, yes, true, t, on, 1, or left empty. Defaults to true

Request body schema
name field_8136507
optional
string
Accepts single line text.
lastname field_8136508
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanAmount field_8136509
optional
string
Accepts single line text.
Email field_8136510
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
Phonenumber field_8136511
optional
number
Accepts a positive number.
IdDoc field_8136512
optional
array
Accepts an array of objects containing at least the name of the user file. Alternatively, you can provide a comma-separated list of file names or an array of file names. You can use the "File uploads" endpoints to upload the file. The response of those calls can be provided directly as object here. The endpoints can be found in the left sidebar.
Bankstate field_8136513
optional
array
Accepts an array of objects containing at least the name of the user file. Alternatively, you can provide a comma-separated list of file names or an array of file names. You can use the "File uploads" endpoints to upload the file. The response of those calls can be provided directly as object here. The endpoints can be found in the left sidebar.
employ field_8136514
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
income field_8136515
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanType field_8136516
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanPurpose field_8136517
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
loanTearm field_8136518
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
idNo field_8136519
optional
string
Accepts single line text.
reference field_8136520
optional
number
Accepts a positive number.
cashcode field_8136521
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
payproof field_8136522
optional
string
Accepts multi line text. If the rich text formatting is enabled, you can use markdown to format the text.
Copy
PATCH
https://api.baserow.io/api/database/rows/table/936442/{row_id}/?user_field_names=true
Request sample
Copy
cURL

User field names
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
curl \
-X PATCH \
-H "Authorization: Token YOUR_DATABASE_TOKEN" \
-H "Content-Type: application/json" \
"https://api.baserow.io/api/database/rows/table/936442/{row_id}/?user_field_names=true" \
--data '{
    "name": "string",
    "lastname": "string",
    "loanAmount": "string",
    "Email": "string",
    "Phonenumber": 0,
    "IdDoc": [
        {
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png"
        }
    ],
    "Bankstate": [
        {
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png"
        }
    ],
    "employ": "string",
    "income": "string",
    "loanType": "string",
    "loanPurpose": "string",
    "loanTearm": "string",
    "idNo": "string",
    "reference": 0,
    "cashcode": "string",
    "payproof": "string"
}'
Response sample
Copy
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
{
    "id": 0,
    "order": "1.00000000000000000000",
    "name": "string",
    "lastname": "string",
    "loanAmount": "string",
    "Email": "string",
    "Phonenumber": 0,
    "IdDoc": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "Bankstate": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "employ": "string",
    "income": "string",
    "loanType": "string",
    "loanPurpose": "string",
    "loanTearm": "string",
    "idNo": "string",
    "reference": 0,
    "cashcode": "string",
    "payproof": "string"
}
Move row
Moves an existing tipfin row before another row. If no before_id is provided, then the row will be moved to the end of the table.

Path parameters
row_id
integer
Moves the row related to the value.
Query parameters
user_field_names
optional
any
When the user_field_names GET parameter is provided and its value is one of the following: y, yes, true, t, on, 1, or empty string, the field names returned by this endpoint will be the actual names of the fields.

If the user_field_names GET parameter is not provided, or if it does not match any of the above values, then all returned field names will be field_ followed by the id of the field. For example field_1 refers to the field with an id of 1.

before_id
optional
integer
Moves the row related to the given `row_id` before the row related to the provided value. If not provided, then the row will be moved to the end.
send_webhook_events
optional
any
A flag query parameter that triggers webhooks after the operation, if set to y, yes, true, t, on, 1, or left empty. Defaults to true

Copy
PATCH
https://api.baserow.io/api/database/rows/table/936442/{row_id}/move/?user_field_names=true
Request sample
Copy
cURL

User field names
curl \
-X PATCH \
-H "Authorization: Token YOUR_DATABASE_TOKEN" \
"https://api.baserow.io/api/database/rows/table/936442/{row_id}/move/?user_field_names=true"
Response sample
Copy
field_8136507field_8136508field_8136509field_8136510field_8136511field_8136512field_8136513field_8136514field_8136515field_8136516field_8136517field_8136518field_8136519field_8136520field_8136521field_8136522
{
    "id": 0,
    "order": "1.00000000000000000000",
    "name": "string",
    "lastname": "string",
    "loanAmount": "string",
    "Email": "string",
    "Phonenumber": 0,
    "IdDoc": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "Bankstate": [
        {
            "url": "https://files.baserow.io/user_files/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "thumbnails": {
                "tiny": {
                    "url": "https://files.baserow.io/media/thumbnails/tiny/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 21,
                    "height": 21
                },
                "small": {
                    "url": "https://files.baserow.io/media/thumbnails/small/VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
                    "width": 48,
                    "height": 48
                }
            },
            "name": "VXotniBOVm8tbstZkKsMKbj2Qg7KmPvn_39d354a76abe56baaf569ad87d0333f58ee4bf3eed368e3b9dc736fd18b09dfd.png",
            "size": 229940,
            "mime_type": "image/png",
            "is_image": true,
            "image_width": 1280,
            "image_height": 585,
            "uploaded_at": "2020-11-17T12:16:10.035234+00:00"
        }
    ],
    "employ": "string",
    "income": "string",
    "loanType": "string",
    "loanPurpose": "string",
    "loanTearm": "string",
    "idNo": "string",
    "reference": 0,
    "cashcode": "string",
    "payproof": "string"
}