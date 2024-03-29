# README

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
## users

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- | 
| nickname           | string	    | null: false               | 
| encrypted_password | string	    | null: false               | 
| email	             | string	    | null: false, unique:true  | 
| last_name_kanji	   | string	    | null: false               | 
| first_name_kanji	 | string	    | null: false               | 
| last_name_kana	   | string	    | null: false               | 
| first_name_kana	   | string	    | null: false               | 
| birth_day	         | date	      | null: false               | 

Association
has_many :items
has_many :purchasing_infos

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
## items
| Column          | Type      | Options                     |
| ----------------| --------- | -------------------------   | 
|name	            |string	    |null: false|
|content    	    |text	      |null: false|
|price	          |integer	  |null: false|
|user	            |references	|null: false, foreign_key:true|
|category_id	    |integer	  |null: false|
|situation_id	    |integer	  |null: false|
|fee_id	          |integer	  |null: false|
|area_id	        |integer	  |null: false|
|delivery_id	    |integer	  |null: false|

Association
belongs_to :user
has_one :purchasing_info
＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

## purchasing_infos

| Column  | Type        | Options                      |
| --------| ---------   | -------------------------    | 
| item	  | references	| null: false, foreign_key:true| 
| user	  | references	| null: false, foreign_key:true| 

Association
belongs_to :user
has_one :sending_info
belongs_to :item

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
## sending_infos

| Column          | Type              | Options                      |
| --------        | ---------         | -------------------------    | 
|purchasing_info  |	references	      |null: false, foreign_key:true | 
|zip_code	        |string	            |null: false                   | 
|ship_from_id	    |integer	          |null: false                   | 
|city	            |string	            |null: false                   | 
|street_number	  |string	            |null: false                   | 
|name_of_building	|string	            |                              | 
|telephone_number	|string	            |null: false                   |     

Association
belongs_to :purchasing_info
＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝