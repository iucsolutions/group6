local groupName = 'group6'
local envVariable = 'serverType'..groupName
local serverType = os.getenv(envVariable)

local iucConf = {}

iucConf.dev = {
   -- Configurations for patient csv File
   ['patientCsvPath'] = '/home/centos/iuc/group6/',
   ['patientCsvFile'] = 'PatientData.txt',
	
   -- Configurations for patient DB file
   ['patientDbPath'] = '/home/centos/iuc/group6/',
   ['patientDbFile'] = 'PatientData.sqlite'
}


iucConf.prod = {
   -- Configurations for patient csv File
   ['patientCsvPath'] = '/home/centos/iuc/prod/group6/',
   ['patientCsvFile'] = 'PatientData.txt',
	
   -- Configurations for patient DB file
   ['patientDbPath'] = '/home/centos/iuc/prod/group6/',
   ['patientDbFile'] = 'PatientData.sqlite'
}


return iucConf[serverType]
