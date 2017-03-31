all: ambassador

.ALWAYS:

ambassador: .ALWAYS
	docker build -t dwflynn/ambassador:0.1.2 ambassador
	docker push dwflynn/ambassador:0.1.2

sds: .ALWAYS
	docker build -t dwflynn/ambassador-sds:0.1.2 sds
	docker push dwflynn/ambassador-sds:0.1.2
	