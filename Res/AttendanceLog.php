<?php
// attendance_log.php

header("Content-Type: application/json");

// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'softstyle_vdqt1');
define('DB_PASS', 'I.jZr6x3T6aTsPbBR3450');
define('DB_NAME', 'softstyle_vdqt1');

// Establish database connection and create table if not exists
function getDBConnection() {
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    // Create table if not exists
 /*   $createTableSQL = "CREATE TABLE IF NOT EXISTS Attendance (
        id INT AUTO_INCREMENT PRIMARY KEY,
        did VARCHAR(36) NOT NULL,
        logdata LONGTEXT NOT NULL,
        cdate DATETIME DEFAULT CURRENT_TIMESTAMP,
        INDEX (did),
        INDEX (cdate)
    )";
    
    if (!$conn->query($createTableSQL)) {
        die("Error creating table: " . $conn->error);
    }
 */
    return $conn;
}
function ValidateDID($DUID):bool{
        // Validate UUID
    if (strlen($DUID) <> 36) {
        http_response_code(400);
        echo json_encode(["error" => "Invalid Device ID" . $DUID]);
        sleep(3); //delay for avoid attacks
        return false;
    }else{ 
        return true;
    }
}

function isWithinTwoYears(int $timestamp): bool {
    $now = time();
    $twoYears = 2 * 365 * 24 * 60 * 60; // 2 years in seconds (approx)
    
    return ($timestamp >= ($now - $twoYears)) && ($timestamp <= ($now + $twoYears));
}

// 1. AddAttendance function
function AddAttendance($DUID) {
    
if (ValidateDID($DUID)==false ){ return;}
    
   // Get JSON input
    $jsonData = file_get_contents('php://input');
    
    $conn = getDBConnection();
    
    // Prepare and bind
    $stmt = $conn->prepare("INSERT INTO Attendance (did, logdata) VALUES (?, ?)");
    $stmt->bind_param("ss", $DUID, $jsonData);
    
    // Execute and respond
    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Attendance data stored successfully"]);
    } else {
        http_response_code(500);
        echo json_encode(["error" => "Failed to store attendance data"]);
    }
    
    $stmt->close();
    $conn->close();
}

// 2. GetAttendance function
function GetAttendance($DUID, $DT_,$type) {
    // Validate UUID
 if (ValidateDID($DUID)==false) { return;}

    // Validate DateTime (basic check)
   $DT=(int)$DT_;
    if (isWithinTwoYears($DT)==false) {
        http_response_code(400);
        echo json_encode(["error" => "Invalid DateTime format"]);
        return;
    }
    
    $conn = getDBConnection();
    
    // Prepare and bind
    $stmt = $conn->prepare("SELECT cdate,logdata FROM Attendance WHERE did = ? AND cdate > FROM_UNIXTIME(?) ORDER BY cdate ASC");
    $stmt->bind_param("si", $DUID, $DT);  
    // Execute
    $stmt->execute();
    $result = $stmt->get_result();
    
    $attendanceRecords = [];
    while ($row = $result->fetch_assoc()) {
        $attendanceRecords[] = $row;
    }
        
if ($type==1){ 
    echo base64_encode(json_encode($attendanceRecords));
}else if ($type==2){ 
    $ar = [];
    foreach ( $attendanceRecords as $data) {
        $ar[] = $data['logdata']; 
    }
    $combined = implode("\n", $ar);
    echo json_encode($combined); 
}else{//    if ($type==0){ 
    echo json_encode($attendanceRecords);
}

    $stmt->close();
    $conn->close();
}

// Router
$requestMethod = $_SERVER['REQUEST_METHOD'];
$requestUri = $_SERVER['REQUEST_URI'];

// Simple routing - in a real project, use a proper router
if ($requestMethod === 'POST') {
    $DUID=$_GET['duid'] ?? '';
    AddAttendance($DUID);
} elseif ($requestMethod === 'GET') {
     $DUID=$_GET['duid'] ?? '';
     $DT = $_GET['dt'] ?? '0';
     $type = $_GET['type'] ?? '0';
        GetAttendance($DUID, $DT,$type);
} else {
     sleep(5); //delay for avoid attacks
    http_response_code(404);
    echo json_encode(["error" => "Endpoint not found"]);
}
?>