import * as mongodb from "mongodb";
 
export interface Employee {
   name: string;
   position: string;
   level: "junior" | "mid" | "senior";
   // This marks the _id field as optional. We don't specify it when
   // creating an employee, but MongoDB will create one for us and 
   // we'll receive it when querying employees. 
   _id?: mongodb.ObjectId;
}
