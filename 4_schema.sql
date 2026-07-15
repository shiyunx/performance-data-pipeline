Table DimOfficer {
  OfficerID varchar [pk]
  OfficerName varchar
  Team varchar
}

Table DimDate {
  DateCreatedPK date [pk]
  Year int
  Month varchar
  Week int
  Day varchar
}

Table DimStatus {
  StatusKey int [pk]
  Status varchar
}

Table FactCases {
  CaseID int [pk]

  OfficerID varchar
  DateCreated date
  StatusKey int

  ResolutionHours int
  SLA_Target_Hours int
  SLA_Met_Flag int
  CSAT float
  CaseAge int
}

Ref: FactCases.OfficerID > DimOfficer.OfficerID
Ref: FactCases.DateCreated > DimDate.DateCreatedPK
Ref: FactCases.StatusKey > DimStatus.StatusKey