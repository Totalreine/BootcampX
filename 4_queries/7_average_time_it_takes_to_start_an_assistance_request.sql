SELECT avg(assistance_requests.started_at - assistance_requests.created_at) as average_request_waiting_time
FROM assistance_requests;
