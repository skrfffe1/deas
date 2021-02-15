<?php

require('connection.php');

$createQuery = "SELECT * FROM events";

$createdQuery = $connection->prepare($createQuery);

$createdQuery -> execute();

$queryArray = array();

while ($outputFrom = $createdQuery -> fetch()) {

    array_push(
        $queryArray, array(
            "student_id"=>$outputFrom['student_id'],
            "year_id"=>$outputFrom['year_id'],
            "gender_id"=>$outputFrom['gender_id'],
            "section_id"=>$outputFrom['section_id'],
            "first_name"=>$outputFrom['first_name'],
            "middle_name"=>$outputFrom['middle_name'],
            "last_name"=>$outputFrom['last_name'],
            "age"=>$outputFrom['age'],
            "email"=>$outputFrom['email'],
            "contact_no"=>$outputFrom['contact_no'],
            "created_at"=>$outputFrom['created_at'],
            "updated_at"=>$outputFrom['updated_at']

        )

    );
}

echo json_encode($queryArray);
?>